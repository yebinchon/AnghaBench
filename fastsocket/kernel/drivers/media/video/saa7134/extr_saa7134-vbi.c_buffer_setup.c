
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct saa7134_fh* priv_data; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {TYPE_1__* tvnorm; } ;
struct TYPE_2__ {int vbi_v_stop_0; int vbi_v_start_0; } ;


 int VBI_LINE_LENGTH ;
 unsigned int saa7134_buffer_count (unsigned int,unsigned int) ;
 unsigned int vbibufs ;

__attribute__((used)) static int
buffer_setup(struct videobuf_queue *q, unsigned int *count, unsigned int *size)
{
 struct saa7134_fh *fh = q->priv_data;
 struct saa7134_dev *dev = fh->dev;
 int llength,lines;

 lines = dev->tvnorm->vbi_v_stop_0 - dev->tvnorm->vbi_v_start_0 +1;
 llength = VBI_LINE_LENGTH;
 *size = lines * llength * 2;
 if (0 == *count)
  *count = vbibufs;
 *count = saa7134_buffer_count(*size,*count);
 return 0;
}
