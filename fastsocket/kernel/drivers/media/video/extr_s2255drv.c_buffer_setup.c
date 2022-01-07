
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct s2255_fh* priv_data; } ;
struct s2255_fh {struct s2255_channel* channel; } ;
struct s2255_channel {int width; int height; TYPE_1__* fmt; } ;
struct TYPE_2__ {int depth; } ;


 unsigned int S2255_DEF_BUFS ;
 int vid_limit ;

__attribute__((used)) static int buffer_setup(struct videobuf_queue *vq, unsigned int *count,
   unsigned int *size)
{
 struct s2255_fh *fh = vq->priv_data;
 struct s2255_channel *channel = fh->channel;
 *size = channel->width * channel->height * (channel->fmt->depth >> 3);

 if (0 == *count)
  *count = S2255_DEF_BUFS;

 if (*size * *count > vid_limit * 1024 * 1024)
  *count = (vid_limit * 1024 * 1024) / *size;

 return 0;
}
