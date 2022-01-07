
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_dmabuf {TYPE_1__* sglist; } ;
struct saa7134_buf {int vb; } ;
struct TYPE_2__ {scalar_t__ offset; } ;


 int saa7134_buffer_startpage (struct saa7134_buf*) ;
 struct videobuf_dmabuf* videobuf_to_dma (int *) ;

unsigned long saa7134_buffer_base(struct saa7134_buf *buf)
{
 unsigned long base;
 struct videobuf_dmabuf *dma=videobuf_to_dma(&buf->vb);

 base = saa7134_buffer_startpage(buf) * 4096;
 base += dma->sglist[0].offset;
 return base;
}
