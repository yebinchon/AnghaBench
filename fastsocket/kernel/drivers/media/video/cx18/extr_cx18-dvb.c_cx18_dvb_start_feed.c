
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct dvb_demux_feed {int index; int pid; struct dvb_demux* demux; } ;
struct TYPE_5__ {int frontend; } ;
struct dvb_demux {TYPE_2__ dmx; scalar_t__ priv; } ;
struct cx18_stream {TYPE_3__* dvb; int s_flags; struct cx18* cx; } ;
struct cx18 {int serialize_lock; TYPE_1__* card; } ;
struct TYPE_6__ {scalar_t__ feeding; int feedlock; } ;
struct TYPE_4__ {int type; } ;
 int CX18_DEBUG_INFO (char*,...) ;
 int CX18_ERR (char*) ;
 int CX18_F_S_STREAMING ;
 int CX18_REG_DMUX_NUM_PORT_0_CONTROL ;
 int EINVAL ;
 int clear_bit (int ,int *) ;
 int cx18_init_on_first_open (struct cx18*) ;
 int cx18_read_reg (struct cx18*,int ) ;
 int cx18_start_v4l2_encode_stream (struct cx18_stream*) ;
 int cx18_write_reg (struct cx18*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int cx18_dvb_start_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct cx18_stream *stream = (struct cx18_stream *) demux->priv;
 struct cx18 *cx;
 int ret;
 u32 v;

 if (!stream)
  return -EINVAL;

 cx = stream->cx;
 CX18_DEBUG_INFO("Start feed: pid = 0x%x index = %d\n",
   feed->pid, feed->index);

 mutex_lock(&cx->serialize_lock);
 ret = cx18_init_on_first_open(cx);
 mutex_unlock(&cx->serialize_lock);
 if (ret) {
  CX18_ERR("Failed to initialize firmware starting DVB feed\n");
  return ret;
 }
 ret = -EINVAL;

 switch (cx->card->type) {
 case 132:
 case 130:
 case 131:
  v = cx18_read_reg(cx, CX18_REG_DMUX_NUM_PORT_0_CONTROL);
  v |= 0x00400000;
  v |= 0x00002000;
  v |= 0x00010000;
  v |= 0x00020000;
  v |= 0x000c0000;
  cx18_write_reg(cx, v, CX18_REG_DMUX_NUM_PORT_0_CONTROL);
  break;

 case 129:
 case 128:
 case 133:
 default:



  break;
 }

 if (!demux->dmx.frontend)
  return -EINVAL;

 mutex_lock(&stream->dvb->feedlock);
 if (stream->dvb->feeding++ == 0) {
  CX18_DEBUG_INFO("Starting Transport DMA\n");
  mutex_lock(&cx->serialize_lock);
  set_bit(CX18_F_S_STREAMING, &stream->s_flags);
  ret = cx18_start_v4l2_encode_stream(stream);
  if (ret < 0) {
   CX18_DEBUG_INFO("Failed to start Transport DMA\n");
   stream->dvb->feeding--;
   if (stream->dvb->feeding == 0)
    clear_bit(CX18_F_S_STREAMING, &stream->s_flags);
  }
  mutex_unlock(&cx->serialize_lock);
 } else
  ret = 0;
 mutex_unlock(&stream->dvb->feedlock);

 return ret;
}
