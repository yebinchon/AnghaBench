
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dma_contig_memory {void* vaddr; int magic; } ;
struct videobuf_buffer {struct videobuf_dma_contig_memory* priv; } ;


 int BUG_ON (int) ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_DC_MEM ;

__attribute__((used)) static void *__videobuf_to_vmalloc(struct videobuf_buffer *buf)
{
 struct videobuf_dma_contig_memory *mem = buf->priv;

 BUG_ON(!mem);
 MAGIC_CHECK(mem->magic, MAGIC_DC_MEM);

 return mem->vaddr;
}
