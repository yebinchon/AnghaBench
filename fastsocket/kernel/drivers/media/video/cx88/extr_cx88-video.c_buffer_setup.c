
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct cx8800_fh* priv_data; } ;
struct cx8800_fh {int width; int height; TYPE_1__* fmt; } ;
struct TYPE_2__ {int depth; } ;


 int vid_limit ;

__attribute__((used)) static int
buffer_setup(struct videobuf_queue *q, unsigned int *count, unsigned int *size)
{
 struct cx8800_fh *fh = q->priv_data;

 *size = fh->fmt->depth*fh->width*fh->height >> 3;
 if (0 == *count)
  *count = 32;
 if (*size * *count > vid_limit * 1024 * 1024)
  *count = (vid_limit * 1024 * 1024) / *size;
 return 0;
}
