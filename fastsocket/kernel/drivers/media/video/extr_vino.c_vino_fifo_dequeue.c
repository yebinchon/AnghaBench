
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer_fifo {scalar_t__ used; unsigned int* data; size_t head; int length; } ;


 int VINO_QUEUE_ERROR ;

__attribute__((used)) static int vino_fifo_dequeue(struct vino_framebuffer_fifo *f, unsigned int *id)
{
 if (f->used > 0) {
  *id = f->data[f->head];
  f->head = (f->head + 1) % f->length;
  f->used--;
 } else {
  return VINO_QUEUE_ERROR;
 }

 return 0;
}
