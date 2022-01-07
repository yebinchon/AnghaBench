
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {struct em28xx_fh* priv_data; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct em28xx {int vbi_width; int vbi_height; } ;


 unsigned int vbibufs ;

__attribute__((used)) static int
vbi_setup(struct videobuf_queue *q, unsigned int *count, unsigned int *size)
{
 struct em28xx_fh *fh = q->priv_data;
 struct em28xx *dev = fh->dev;

 *size = dev->vbi_width * dev->vbi_height * 2;

 if (0 == *count)
  *count = vbibufs;
 if (*count < 2)
  *count = 2;
 if (*count > 32)
  *count = 32;
 return 0;
}
