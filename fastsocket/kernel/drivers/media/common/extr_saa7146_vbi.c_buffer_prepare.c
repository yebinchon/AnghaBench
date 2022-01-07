
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {struct file* priv_data; } ;
struct videobuf_dmabuf {int sglen; int sglist; } ;
struct videobuf_buffer {int dummy; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {int pci; } ;
struct TYPE_3__ {scalar_t__ baddr; int bsize; int size; scalar_t__ state; int width; int height; int field; } ;
struct saa7146_buf {int activate; TYPE_1__ vb; int * pt; } ;
struct file {struct saa7146_fh* private_data; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int DEB_VBI (char*) ;
 int EINVAL ;
 scalar_t__ VIDEOBUF_NEEDS_INIT ;
 scalar_t__ VIDEOBUF_PREPARED ;
 int buffer_activate ;
 int saa7146_dma_free (struct saa7146_dev*,struct videobuf_queue*,struct saa7146_buf*) ;
 int saa7146_pgtable_alloc (int ,int *) ;
 int saa7146_pgtable_build_single (int ,int *,int ,int ) ;
 int saa7146_pgtable_free (int ,int *) ;
 int vbi_pixel_to_capture ;
 int videobuf_iolock (struct videobuf_queue*,TYPE_1__*,int *) ;
 struct videobuf_dmabuf* videobuf_to_dma (TYPE_1__*) ;

__attribute__((used)) static int buffer_prepare(struct videobuf_queue *q, struct videobuf_buffer *vb,enum v4l2_field field)
{
 struct file *file = q->priv_data;
 struct saa7146_fh *fh = file->private_data;
 struct saa7146_dev *dev = fh->dev;
 struct saa7146_buf *buf = (struct saa7146_buf *)vb;

 int err = 0;
 int lines, llength, size;

 lines = 16 * 2 ;
 llength = vbi_pixel_to_capture;
 size = lines * llength;

 DEB_VBI(("vb:%p\n",vb));

 if (0 != buf->vb.baddr && buf->vb.bsize < size) {
  DEB_VBI(("size mismatch.\n"));
  return -EINVAL;
 }

 if (buf->vb.size != size)
  saa7146_dma_free(dev,q,buf);

 if (VIDEOBUF_NEEDS_INIT == buf->vb.state) {
  struct videobuf_dmabuf *dma=videobuf_to_dma(&buf->vb);

  buf->vb.width = llength;
  buf->vb.height = lines;
  buf->vb.size = size;
  buf->vb.field = field;

  saa7146_pgtable_free(dev->pci, &buf->pt[2]);
  saa7146_pgtable_alloc(dev->pci, &buf->pt[2]);

  err = videobuf_iolock(q,&buf->vb, ((void*)0));
  if (err)
   goto oops;
  err = saa7146_pgtable_build_single(dev->pci, &buf->pt[2],
       dma->sglist, dma->sglen);
  if (0 != err)
   return err;
 }
 buf->vb.state = VIDEOBUF_PREPARED;
 buf->activate = buffer_activate;

 return 0;

 oops:
 DEB_VBI(("error out.\n"));
 saa7146_dma_free(dev,q,buf);

 return err;
}
