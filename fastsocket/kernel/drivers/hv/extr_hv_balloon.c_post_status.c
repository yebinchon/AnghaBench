
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysinfo {int freeram; } ;
struct hv_dynmem_device {TYPE_2__* dev; scalar_t__ num_pages_ballooned; } ;
struct TYPE_3__ {int size; scalar_t__ trans_id; int type; } ;
struct dm_status {TYPE_1__ hdr; scalar_t__ num_committed; int num_avail; } ;
struct TYPE_4__ {int channel; } ;


 int DM_STATUS_REPORT ;
 int VM_PKT_DATA_INBAND ;
 scalar_t__ atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ compute_balloon_floor () ;
 int memset (struct dm_status*,int ,int) ;
 scalar_t__ pressure_report_delay ;
 int si_meminfo (struct sysinfo*) ;
 int trans_id ;
 scalar_t__ vm_memory_committed () ;
 int vmbus_sendpacket (int ,struct dm_status*,int,unsigned long,int ,int ) ;

__attribute__((used)) static void post_status(struct hv_dynmem_device *dm)
{
 struct dm_status status;
 struct sysinfo val;

 if (pressure_report_delay > 0) {
  --pressure_report_delay;
  return;
 }
 si_meminfo(&val);
 memset(&status, 0, sizeof(struct dm_status));
 status.hdr.type = DM_STATUS_REPORT;
 status.hdr.size = sizeof(struct dm_status);
 status.hdr.trans_id = atomic_inc_return(&trans_id);
 status.num_avail = val.freeram;
 status.num_committed = vm_memory_committed() +
    dm->num_pages_ballooned +
    compute_balloon_floor();






 if (status.hdr.trans_id != atomic_read(&trans_id))
  return;

 vmbus_sendpacket(dm->dev->channel, &status,
    sizeof(struct dm_status),
    (unsigned long)((void*)0),
    VM_PKT_DATA_INBAND, 0);

}
