
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_vmalloc_memory {void* vaddr; int magic; } ;
struct videobuf_buffer {struct videobuf_vmalloc_memory* priv; } ;


 int BUG_ON (int) ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_VMAL_MEM ;

void *videobuf_to_vmalloc(struct videobuf_buffer *buf)
{
 struct videobuf_vmalloc_memory *mem = buf->priv;
 BUG_ON(!mem);
 MAGIC_CHECK(mem->magic, MAGIC_VMAL_MEM);

 return mem->vaddr;
}
