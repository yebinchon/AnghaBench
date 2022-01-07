
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {int type; int pid; } ;


 int deb_ts (char*,int ,int ) ;
 int dvb_usb_ctrl_feed (struct dvb_demux_feed*,int) ;

__attribute__((used)) static int dvb_usb_start_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 deb_ts("start pid: 0x%04x, feedtype: %d\n", dvbdmxfeed->pid,dvbdmxfeed->type);
 return dvb_usb_ctrl_feed(dvbdmxfeed,1);
}
