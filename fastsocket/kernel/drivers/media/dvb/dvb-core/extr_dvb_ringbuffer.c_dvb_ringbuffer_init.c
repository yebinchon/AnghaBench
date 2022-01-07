
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {size_t size; int lock; int queue; scalar_t__ error; void* data; scalar_t__ pwrite; scalar_t__ pread; } ;


 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

void dvb_ringbuffer_init(struct dvb_ringbuffer *rbuf, void *data, size_t len)
{
 rbuf->pread=rbuf->pwrite=0;
 rbuf->data=data;
 rbuf->size=len;
 rbuf->error=0;

 init_waitqueue_head(&rbuf->queue);

 spin_lock_init(&(rbuf->lock));
}
