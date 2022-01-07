
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int bufferslock; int buffers; int buffer_mng_waitq; } ;
struct smscore_buffer_t {int entry; } ;


 int list_add_locked (int *,int *,int *) ;
 int wake_up_interruptible (int *) ;

void smscore_putbuffer(struct smscore_device_t *coredev,
  struct smscore_buffer_t *cb) {
 wake_up_interruptible(&coredev->buffer_mng_waitq);
 list_add_locked(&cb->entry, &coredev->buffers, &coredev->bufferslock);
}
