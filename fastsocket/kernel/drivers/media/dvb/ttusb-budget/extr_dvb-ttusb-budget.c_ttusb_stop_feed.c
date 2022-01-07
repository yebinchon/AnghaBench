
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusb {scalar_t__ running_feed_count; } ;
struct dvb_demux_feed {int index; scalar_t__ demux; } ;


 int ttusb_del_channel (struct ttusb*,int ) ;
 int ttusb_stop_iso_xfer (struct ttusb*) ;

__attribute__((used)) static int ttusb_stop_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct ttusb *ttusb = (struct ttusb *) dvbdmxfeed->demux;

 ttusb_del_channel(ttusb, dvbdmxfeed->index);

 if (--ttusb->running_feed_count == 0)
  ttusb_stop_iso_xfer(ttusb);

 return 0;
}
