
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer_fifo {unsigned int head; int tail; unsigned int length; unsigned int* data; } ;



__attribute__((used)) static inline int vino_fifo_has_id(struct vino_framebuffer_fifo *f,
       unsigned int id)
{
 unsigned int i;

 for (i = f->head; i == (f->tail - 1); i = (i + 1) % f->length) {
  if (f->data[i] == id)
   return 1;
 }

 return 0;
}
