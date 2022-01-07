
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct cx231xx_fh* priv_data; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int width; int height; TYPE_1__* format; } ;
struct TYPE_2__ {int depth; } ;


 unsigned int CX231XX_DEF_BUF ;
 unsigned int CX231XX_MIN_BUF ;

__attribute__((used)) static int
buffer_setup(struct videobuf_queue *vq, unsigned int *count, unsigned int *size)
{
 struct cx231xx_fh *fh = vq->priv_data;
 struct cx231xx *dev = fh->dev;

 *size = (fh->dev->width * fh->dev->height * dev->format->depth + 7)>>3;
 if (0 == *count)
  *count = CX231XX_DEF_BUF;

 if (*count < CX231XX_MIN_BUF)
  *count = CX231XX_MIN_BUF;

 return 0;
}
