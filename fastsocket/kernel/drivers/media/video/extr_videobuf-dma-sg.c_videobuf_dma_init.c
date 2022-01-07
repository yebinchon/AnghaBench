
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dmabuf {int magic; } ;


 int MAGIC_DMABUF ;
 int memset (struct videobuf_dmabuf*,int ,int) ;

void videobuf_dma_init(struct videobuf_dmabuf *dma)
{
 memset(dma, 0, sizeof(*dma));
 dma->magic = MAGIC_DMABUF;
}
