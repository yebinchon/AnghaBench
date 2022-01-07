
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer_fifo {unsigned int length; unsigned int used; unsigned int* data; size_t tail; } ;


 int VINO_QUEUE_ERROR ;
 scalar_t__ vino_fifo_has_id (struct vino_framebuffer_fifo*,unsigned int) ;

__attribute__((used)) static int vino_fifo_enqueue(struct vino_framebuffer_fifo *f, unsigned int id)
{
 if (id >= f->length) {
  return VINO_QUEUE_ERROR;
 }

 if (vino_fifo_has_id(f, id)) {
  return VINO_QUEUE_ERROR;
 }

 if (f->used < f->length) {
  f->data[f->tail] = id;
  f->tail = (f->tail + 1) % f->length;
  f->used++;
 } else {
  return VINO_QUEUE_ERROR;
 }

 return 0;
}
