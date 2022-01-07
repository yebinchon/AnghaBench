
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* vaddr; } ;
struct videobuf_dma_sg_memory {TYPE_1__ dma; int magic; } ;
struct videobuf_buffer {struct videobuf_dma_sg_memory* priv; } ;


 int BUG_ON (int) ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_SG_MEM ;

__attribute__((used)) static void *__videobuf_to_vaddr(struct videobuf_buffer *buf)
{
 struct videobuf_dma_sg_memory *mem = buf->priv;
 BUG_ON(!mem);

 MAGIC_CHECK(mem->magic, MAGIC_SG_MEM);

 return mem->dma.vaddr;
}
