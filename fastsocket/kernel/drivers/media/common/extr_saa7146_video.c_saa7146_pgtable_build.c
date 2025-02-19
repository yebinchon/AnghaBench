
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_dmabuf {int sglen; struct scatterlist* sglist; } ;
struct scatterlist {int length; scalar_t__ offset; } ;
struct saa7146_pgtable {int * cpu; scalar_t__ offset; } ;
struct saa7146_format {int depth; int trans; } ;
struct saa7146_dev {struct pci_dev* pci; } ;
struct saa7146_buf {struct saa7146_pgtable* pt; TYPE_1__* fmt; int vb; } ;
struct pci_dev {int dummy; } ;
typedef int __le32 ;
struct TYPE_2__ {int width; int height; int pixelformat; } ;


 int DEB_CAP (char*) ;
 int DEB_EE (char*) ;
 scalar_t__ IS_PLANAR (int ) ;
 int PAGE_SIZE ;
 int cpu_to_le32 (scalar_t__) ;
 struct saa7146_format* saa7146_format_by_fourcc (struct saa7146_dev*,int ) ;
 int saa7146_pgtable_build_single (struct pci_dev*,struct saa7146_pgtable*,struct scatterlist*,int) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;
 struct videobuf_dmabuf* videobuf_to_dma (int *) ;

__attribute__((used)) static int saa7146_pgtable_build(struct saa7146_dev *dev, struct saa7146_buf *buf)
{
 struct pci_dev *pci = dev->pci;
 struct videobuf_dmabuf *dma=videobuf_to_dma(&buf->vb);
 struct scatterlist *list = dma->sglist;
 int length = dma->sglen;
 struct saa7146_format *sfmt = saa7146_format_by_fourcc(dev,buf->fmt->pixelformat);

 DEB_EE(("dev:%p, buf:%p, sg_len:%d\n",dev,buf,length));

 if( 0 != IS_PLANAR(sfmt->trans)) {
  struct saa7146_pgtable *pt1 = &buf->pt[0];
  struct saa7146_pgtable *pt2 = &buf->pt[1];
  struct saa7146_pgtable *pt3 = &buf->pt[2];
  __le32 *ptr1, *ptr2, *ptr3;
  __le32 fill;

  int size = buf->fmt->width*buf->fmt->height;
  int i,p,m1,m2,m3,o1,o2;

  switch( sfmt->depth ) {
   case 12: {

    m1 = ((size+PAGE_SIZE)/PAGE_SIZE)-1;
    m2 = ((size+(size/4)+PAGE_SIZE)/PAGE_SIZE)-1;
    m3 = ((size+(size/2)+PAGE_SIZE)/PAGE_SIZE)-1;
    o1 = size%PAGE_SIZE;
    o2 = (size+(size/4))%PAGE_SIZE;
    DEB_CAP(("size:%d, m1:%d, m2:%d, m3:%d, o1:%d, o2:%d\n",size,m1,m2,m3,o1,o2));
    break;
   }
   case 16: {

    m1 = ((size+PAGE_SIZE)/PAGE_SIZE)-1;
    m2 = ((size+(size/2)+PAGE_SIZE)/PAGE_SIZE)-1;
    m3 = ((2*size+PAGE_SIZE)/PAGE_SIZE)-1;
    o1 = size%PAGE_SIZE;
    o2 = (size+(size/2))%PAGE_SIZE;
    DEB_CAP(("size:%d, m1:%d, m2:%d, m3:%d, o1:%d, o2:%d\n",size,m1,m2,m3,o1,o2));
    break;
   }
   default: {
    return -1;
   }
  }

  ptr1 = pt1->cpu;
  ptr2 = pt2->cpu;
  ptr3 = pt3->cpu;


  for (i = 0; i < length; i++, list++) {
   for (p = 0; p * 4096 < list->length; p++, ptr1++) {
    *ptr1 = cpu_to_le32(sg_dma_address(list) - list->offset);
   }
  }
  pt1->offset = dma->sglist->offset;
  pt2->offset = pt1->offset+o1;
  pt3->offset = pt1->offset+o2;


  ptr1 = pt1->cpu;
  for(i = m1; i <= m2 ; i++, ptr2++) {
   *ptr2 = ptr1[i];
  }
  fill = *(ptr2-1);
  for(;i<1024;i++,ptr2++) {
   *ptr2 = fill;
  }

  ptr1 = pt1->cpu;
  for(i = m2; i <= m3; i++,ptr3++) {
   *ptr3 = ptr1[i];
  }
  fill = *(ptr3-1);
  for(;i<1024;i++,ptr3++) {
   *ptr3 = fill;
  }

  ptr1 = pt1->cpu+m1;
  fill = pt1->cpu[m1];
  for(i=m1;i<1024;i++,ptr1++) {
   *ptr1 = fill;
  }
 } else {
  struct saa7146_pgtable *pt = &buf->pt[0];
  return saa7146_pgtable_build_single(pci, pt, list, length);
 }

 return 0;
}
