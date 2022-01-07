
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* free_queue; int error_sequence_id; int ioctl_wqueue; int ioctl_lock; int chrdev_request_id; void* free_tail; void* free_head; int * state; int ** event_queue; int host; } ;
typedef int TW_Event ;
typedef TYPE_1__ TW_Device_Extension ;
typedef int TW_Command_Full ;
typedef int TW_Command_Apache_Header ;


 int GFP_KERNEL ;
 int TW_DRIVER ;
 int TW_IOCTL_CHRDEV_FREE ;
 int TW_PRINTK (int ,int ,int,char*) ;
 int TW_Q_LENGTH ;
 void* TW_Q_START ;
 int TW_SECTOR_SIZE ;
 int TW_S_INITIAL ;
 int init_waitqueue_head (int *) ;
 int * kcalloc (int,int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ twl_allocate_memory (TYPE_1__*,int,int) ;

__attribute__((used)) static int twl_initialize_device_extension(TW_Device_Extension *tw_dev)
{
 int i, retval = 1;


 if (twl_allocate_memory(tw_dev, sizeof(TW_Command_Full), 0)) {
  TW_PRINTK(tw_dev->host, TW_DRIVER, 0x9, "Command packet memory allocation failed");
  goto out;
 }


 if (twl_allocate_memory(tw_dev, TW_SECTOR_SIZE, 1)) {
  TW_PRINTK(tw_dev->host, TW_DRIVER, 0xa, "Generic memory allocation failed");
  goto out;
 }


 if (twl_allocate_memory(tw_dev, sizeof(TW_Command_Apache_Header), 2)) {
  TW_PRINTK(tw_dev->host, TW_DRIVER, 0xb, "Sense buffer allocation failed");
  goto out;
 }


 tw_dev->event_queue[0] = kcalloc(TW_Q_LENGTH, sizeof(TW_Event), GFP_KERNEL);
 if (!tw_dev->event_queue[0]) {
  TW_PRINTK(tw_dev->host, TW_DRIVER, 0xc, "Event info memory allocation failed");
  goto out;
 }

 for (i = 0; i < TW_Q_LENGTH; i++) {
  tw_dev->event_queue[i] = (TW_Event *)((unsigned char *)tw_dev->event_queue[0] + (i * sizeof(TW_Event)));
  tw_dev->free_queue[i] = i;
  tw_dev->state[i] = TW_S_INITIAL;
 }

 tw_dev->free_head = TW_Q_START;
 tw_dev->free_tail = TW_Q_START;
 tw_dev->error_sequence_id = 1;
 tw_dev->chrdev_request_id = TW_IOCTL_CHRDEV_FREE;

 mutex_init(&tw_dev->ioctl_lock);
 init_waitqueue_head(&tw_dev->ioctl_wqueue);

 retval = 0;
out:
 return retval;
}
