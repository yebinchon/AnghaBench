
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int first_minor; int tape_dnr; int ref_count; scalar_t__* modeset_byte; int medium_state; int tape_state; int wait_queue; int state_change_wq; int node; int req_queue; } ;


 int DBF_EXCEPTION (int,char*) ;
 int ENOMEM ;
 struct tape_device* ERR_PTR (int ) ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int MS_UNKNOWN ;
 int TS_INIT ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct tape_device*) ;
 scalar_t__* kmalloc (int,int) ;
 struct tape_device* kzalloc (int,int) ;
 int tape_delayed_next_request ;

__attribute__((used)) static struct tape_device *
tape_alloc_device(void)
{
 struct tape_device *device;

 device = kzalloc(sizeof(struct tape_device), GFP_KERNEL);
 if (device == ((void*)0)) {
  DBF_EXCEPTION(2, "ti:no mem\n");
  return ERR_PTR(-ENOMEM);
 }
 device->modeset_byte = kmalloc(1, GFP_KERNEL | GFP_DMA);
 if (device->modeset_byte == ((void*)0)) {
  DBF_EXCEPTION(2, "ti:no mem\n");
  kfree(device);
  return ERR_PTR(-ENOMEM);
 }
 INIT_LIST_HEAD(&device->req_queue);
 INIT_LIST_HEAD(&device->node);
 init_waitqueue_head(&device->state_change_wq);
 init_waitqueue_head(&device->wait_queue);
 device->tape_state = TS_INIT;
 device->medium_state = MS_UNKNOWN;
 *device->modeset_byte = 0;
 device->first_minor = -1;
 atomic_set(&device->ref_count, 1);
 INIT_DELAYED_WORK(&device->tape_dnr, tape_delayed_next_request);

 return device;
}
