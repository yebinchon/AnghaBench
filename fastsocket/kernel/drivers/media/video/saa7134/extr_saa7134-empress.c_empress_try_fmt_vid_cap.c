
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sizeimage; int pixelformat; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct TYPE_6__ {int nr_packets; } ;
struct saa7134_dev {TYPE_3__ ts; } ;
struct file {struct saa7134_dev* private_data; } ;


 int TS_PACKET_SIZE ;
 int V4L2_PIX_FMT_MPEG ;

__attribute__((used)) static int empress_try_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct saa7134_dev *dev = file->private_data;

 f->fmt.pix.pixelformat = V4L2_PIX_FMT_MPEG;
 f->fmt.pix.sizeimage = TS_PACKET_SIZE * dev->ts.nr_packets;

 return 0;
}
