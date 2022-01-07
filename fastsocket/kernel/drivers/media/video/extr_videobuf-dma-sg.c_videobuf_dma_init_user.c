
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_dmabuf {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 TYPE_2__* current ;
 int down_read (int *) ;
 int up_read (int *) ;
 int videobuf_dma_init_user_locked (struct videobuf_dmabuf*,int,unsigned long,unsigned long) ;

int videobuf_dma_init_user(struct videobuf_dmabuf *dma, int direction,
      unsigned long data, unsigned long size)
{
 int ret;

 down_read(&current->mm->mmap_sem);
 ret = videobuf_dma_init_user_locked(dma, direction, data, size);
 up_read(&current->mm->mmap_sem);

 return ret;
}
