
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {struct au0828_fh* priv_data; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {int vbi_width; int vbi_height; } ;


 unsigned int vbibufs ;

__attribute__((used)) static int
vbi_setup(struct videobuf_queue *q, unsigned int *count, unsigned int *size)
{
 struct au0828_fh *fh = q->priv_data;
 struct au0828_dev *dev = fh->dev;

 *size = dev->vbi_width * dev->vbi_height * 2;

 if (0 == *count)
  *count = vbibufs;
 if (*count < 2)
  *count = 2;
 if (*count > 32)
  *count = 32;
 return 0;
}
