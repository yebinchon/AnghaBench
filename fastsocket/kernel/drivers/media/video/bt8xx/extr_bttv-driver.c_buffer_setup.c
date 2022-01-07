
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct bttv_fh* priv_data; } ;
struct bttv_fh {int width; int height; TYPE_1__* fmt; } ;
struct TYPE_2__ {int depth; } ;


 unsigned int gbuffers ;
 unsigned int gbufsize ;

__attribute__((used)) static int
buffer_setup(struct videobuf_queue *q, unsigned int *count, unsigned int *size)
{
 struct bttv_fh *fh = q->priv_data;

 *size = fh->fmt->depth*fh->width*fh->height >> 3;
 if (0 == *count)
  *count = gbuffers;
 if (*size * *count > gbuffers * gbufsize)
  *count = (gbuffers * gbufsize) / *size;
 return 0;
}
