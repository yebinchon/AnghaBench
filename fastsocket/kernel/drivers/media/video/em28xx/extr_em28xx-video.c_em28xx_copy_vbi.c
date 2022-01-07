
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx_dmaqueue {unsigned long pos; } ;
struct TYPE_2__ {unsigned long size; } ;
struct em28xx_buffer {scalar_t__ top_field; TYPE_1__ vb; } ;
struct em28xx {int vbi_width; int vbi_height; } ;


 int em28xx_isocdbg (char*) ;
 int memcpy (void*,void*,unsigned long) ;

__attribute__((used)) static void em28xx_copy_vbi(struct em28xx *dev,
         struct em28xx_dmaqueue *dma_q,
         struct em28xx_buffer *buf,
         unsigned char *p,
         unsigned char *outp, unsigned long len)
{
 void *startwrite, *startread;
 int offset;
 int bytesperline;

 if (dev == ((void*)0)) {
  em28xx_isocdbg("dev is null\n");
  return;
 }
 bytesperline = dev->vbi_width;

 if (dma_q == ((void*)0)) {
  em28xx_isocdbg("dma_q is null\n");
  return;
 }
 if (buf == ((void*)0)) {
  return;
 }
 if (p == ((void*)0)) {
  em28xx_isocdbg("p is null\n");
  return;
 }
 if (outp == ((void*)0)) {
  em28xx_isocdbg("outp is null\n");
  return;
 }

 if (dma_q->pos + len > buf->vb.size)
  len = buf->vb.size - dma_q->pos;

 startread = p;

 startwrite = outp + dma_q->pos;
 offset = dma_q->pos;


 if (buf->top_field == 0) {
  startwrite += bytesperline * dev->vbi_height;
  offset += bytesperline * dev->vbi_height;
 }

 memcpy(startwrite, startread, len);
 dma_q->pos += len;
}
