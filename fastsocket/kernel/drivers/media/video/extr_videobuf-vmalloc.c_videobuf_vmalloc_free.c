
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_vmalloc_memory {int * vaddr; int magic; } ;
struct videobuf_buffer {scalar_t__ memory; scalar_t__ baddr; struct videobuf_vmalloc_memory* priv; } ;


 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_VMAL_MEM ;
 scalar_t__ V4L2_MEMORY_USERPTR ;
 int vfree (int *) ;

void videobuf_vmalloc_free(struct videobuf_buffer *buf)
{
 struct videobuf_vmalloc_memory *mem = buf->priv;







 if ((buf->memory != V4L2_MEMORY_USERPTR) || buf->baddr)
  return;

 if (!mem)
  return;

 MAGIC_CHECK(mem->magic, MAGIC_VMAL_MEM);

 vfree(mem->vaddr);
 mem->vaddr = ((void*)0);

 return;
}
