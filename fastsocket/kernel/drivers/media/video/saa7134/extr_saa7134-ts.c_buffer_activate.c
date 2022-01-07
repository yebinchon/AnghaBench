
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timeout; } ;
struct saa7134_dev {int ts_started; TYPE_1__ ts_q; } ;
struct TYPE_4__ {scalar_t__ field; int state; } ;
struct saa7134_buf {TYPE_2__ vb; scalar_t__ top_seen; } ;


 int SAA7134_RS_BA1 (int) ;
 int SAA7134_RS_BA2 (int) ;
 scalar_t__ TS_BUFFER_TIMEOUT ;
 scalar_t__ V4L2_FIELD_TOP ;
 int VIDEOBUF_ACTIVE ;
 int dprintk (char*,struct saa7134_buf*,...) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int saa7134_buffer_base (struct saa7134_buf*) ;
 int saa7134_set_dmabits (struct saa7134_dev*) ;
 int saa7134_ts_start (struct saa7134_dev*) ;
 int saa_writel (int ,int ) ;

__attribute__((used)) static int buffer_activate(struct saa7134_dev *dev,
      struct saa7134_buf *buf,
      struct saa7134_buf *next)
{

 dprintk("buffer_activate [%p]",buf);
 buf->vb.state = VIDEOBUF_ACTIVE;
 buf->top_seen = 0;

 if (((void*)0) == next)
  next = buf;
 if (V4L2_FIELD_TOP == buf->vb.field) {
  dprintk("- [top]     buf=%p next=%p\n",buf,next);
  saa_writel(SAA7134_RS_BA1(5),saa7134_buffer_base(buf));
  saa_writel(SAA7134_RS_BA2(5),saa7134_buffer_base(next));
 } else {
  dprintk("- [bottom]  buf=%p next=%p\n",buf,next);
  saa_writel(SAA7134_RS_BA1(5),saa7134_buffer_base(next));
  saa_writel(SAA7134_RS_BA2(5),saa7134_buffer_base(buf));
 }


 saa7134_set_dmabits(dev);

 mod_timer(&dev->ts_q.timeout, jiffies+TS_BUFFER_TIMEOUT);

 if (!dev->ts_started)
  saa7134_ts_start(dev);

 return 0;
}
