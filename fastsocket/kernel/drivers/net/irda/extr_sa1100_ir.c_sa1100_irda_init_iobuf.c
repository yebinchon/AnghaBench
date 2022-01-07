
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int truesize; int * head; int * data; int state; int in_frame; } ;
typedef TYPE_1__ iobuff_t ;


 int ENOMEM ;
 int FALSE ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int OUTSIDE_FRAME ;
 int * kmalloc (int,int) ;

__attribute__((used)) static int sa1100_irda_init_iobuf(iobuff_t *io, int size)
{
 io->head = kmalloc(size, GFP_KERNEL | GFP_DMA);
 if (io->head != ((void*)0)) {
  io->truesize = size;
  io->in_frame = FALSE;
  io->state = OUTSIDE_FRAME;
  io->data = io->head;
 }
 return io->head ? 0 : -ENOMEM;
}
