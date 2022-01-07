
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {struct bttv_fh* priv_data; } ;
struct TYPE_4__ {int * count; int * start; int samples_per_line; } ;
struct TYPE_3__ {TYPE_2__ fmt; } ;
struct bttv_fh {TYPE_1__ vbi_fmt; struct bttv* btv; } ;
struct bttv {int dummy; } ;


 unsigned int IMAGE_SIZE (TYPE_2__*) ;
 int dprintk (char*,int ,int ,int ,int ,int ) ;
 unsigned int vbibufs ;

__attribute__((used)) static int vbi_buffer_setup(struct videobuf_queue *q,
       unsigned int *count, unsigned int *size)
{
 struct bttv_fh *fh = q->priv_data;
 struct bttv *btv = fh->btv;

 if (0 == *count)
  *count = vbibufs;

 *size = IMAGE_SIZE(&fh->vbi_fmt.fmt);

 dprintk("setup: samples=%u start=%d,%d count=%u,%u\n",
  fh->vbi_fmt.fmt.samples_per_line,
  fh->vbi_fmt.fmt.start[0],
  fh->vbi_fmt.fmt.start[1],
  fh->vbi_fmt.fmt.count[0],
  fh->vbi_fmt.fmt.count[1]);

 return 0;
}
