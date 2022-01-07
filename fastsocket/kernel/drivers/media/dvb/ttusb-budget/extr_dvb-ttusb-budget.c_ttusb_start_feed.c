
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusb {int running_feed_count; } ;
struct dvb_demux_feed {int type; int pes_type; int pid; int index; scalar_t__ demux; } ;
 int EINVAL ;
 int dprintk (char*) ;
 int ttusb_set_channel (struct ttusb*,int ,int,int ) ;
 int ttusb_start_iso_xfer (struct ttusb*) ;

__attribute__((used)) static int ttusb_start_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct ttusb *ttusb = (struct ttusb *) dvbdmxfeed->demux;
 int feed_type = 1;

 dprintk("ttusb_start_feed\n");

 switch (dvbdmxfeed->type) {
 case 128:
  break;
 case 129:
  break;
 default:
  return -EINVAL;
 }

 if (dvbdmxfeed->type == 128) {
  switch (dvbdmxfeed->pes_type) {
  case 130:
  case 134:
  case 131:
  case 132:
  case 133:
   break;
  default:
   return -EINVAL;
  }
 }
 ttusb_set_channel(ttusb, dvbdmxfeed->index, feed_type, dvbdmxfeed->pid);

 if (0 == ttusb->running_feed_count++)
  ttusb_start_iso_xfer(ttusb);

 return 0;
}
