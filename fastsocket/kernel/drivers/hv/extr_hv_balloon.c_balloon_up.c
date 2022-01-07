
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_9__ {int size; int trans_id; int type; } ;
struct dm_balloon_response {int more_pages; int range_count; int * range_array; TYPE_3__ hdr; } ;
struct TYPE_7__ {int num_pages; } ;
struct TYPE_10__ {TYPE_2__* dev; int state; TYPE_1__ balloon_wrk; } ;
struct TYPE_8__ {int channel; } ;


 int DM_BALLOON_RESPONSE ;
 int DM_INITIALIZED ;
 int EAGAIN ;
 int PAGE_SIZE ;
 int VM_PKT_DATA_INBAND ;
 int alloc_balloon_pages (TYPE_4__*,int,struct dm_balloon_response*,int,int*) ;
 int atomic_inc_return (int *) ;
 TYPE_4__ dm_device ;
 int free_balloon_pages (TYPE_4__*,int *) ;
 int memset (scalar_t__,int ,int ) ;
 int msleep (int) ;
 int pr_info (char*) ;
 scalar_t__ send_buffer ;
 int trans_id ;
 int vmbus_sendpacket (int ,struct dm_balloon_response*,int,unsigned long,int ,int ) ;

__attribute__((used)) static void balloon_up(struct work_struct *dummy)
{
 int num_pages = dm_device.balloon_wrk.num_pages;
 int num_ballooned = 0;
 struct dm_balloon_response *bl_resp;
 int alloc_unit;
 int ret;
 bool alloc_error = 0;
 bool done = 0;
 int i;






 alloc_unit = 512;

 while (!done) {
  bl_resp = (struct dm_balloon_response *)send_buffer;
  memset(send_buffer, 0, PAGE_SIZE);
  bl_resp->hdr.type = DM_BALLOON_RESPONSE;
  bl_resp->hdr.size = sizeof(struct dm_balloon_response);
  bl_resp->more_pages = 1;


  num_pages -= num_ballooned;
  num_ballooned = alloc_balloon_pages(&dm_device, num_pages,
      bl_resp, alloc_unit,
       &alloc_error);

  if ((alloc_error) && (alloc_unit != 1)) {
   alloc_unit = 1;
   continue;
  }

  if ((alloc_error) || (num_ballooned == num_pages)) {
   bl_resp->more_pages = 0;
   done = 1;
   dm_device.state = DM_INITIALIZED;
  }







  do {
   bl_resp->hdr.trans_id = atomic_inc_return(&trans_id);
   ret = vmbus_sendpacket(dm_device.dev->channel,
      bl_resp,
      bl_resp->hdr.size,
      (unsigned long)((void*)0),
      VM_PKT_DATA_INBAND, 0);

   if (ret == -EAGAIN)
    msleep(20);

  } while (ret == -EAGAIN);

  if (ret) {



   pr_info("Balloon response failed\n");

   for (i = 0; i < bl_resp->range_count; i++)
    free_balloon_pages(&dm_device,
       &bl_resp->range_array[i]);

   done = 1;
  }
 }

}
