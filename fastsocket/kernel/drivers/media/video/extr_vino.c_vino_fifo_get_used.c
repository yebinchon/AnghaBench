
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer_fifo {unsigned int used; } ;



__attribute__((used)) static inline unsigned int vino_fifo_get_used(struct vino_framebuffer_fifo *f)
{
 return f->used;
}
