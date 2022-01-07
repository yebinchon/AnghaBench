
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* streaming_ctrl ) (struct dvb_usb_adapter*,int) ;int caps; scalar_t__ (* pid_filter_ctrl ) (struct dvb_usb_adapter*,scalar_t__) ;int (* pid_filter ) (struct dvb_usb_adapter*,int ,int ,int) ;} ;
struct dvb_usb_adapter {int feedcount; TYPE_2__ props; scalar_t__ pid_filtering; int stream; } ;
struct dvb_demux_feed {int pid; int index; TYPE_1__* demux; } ;
struct TYPE_3__ {struct dvb_usb_adapter* priv; } ;


 int DVB_USB_ADAP_HAS_PID_FILTER ;
 int DVB_USB_ADAP_PID_FILTER_CAN_BE_TURNED_OFF ;
 int ENODEV ;
 int deb_ts (char*,...) ;
 int err (char*) ;
 int stub1 (struct dvb_usb_adapter*,int) ;
 int stub2 (struct dvb_usb_adapter*,int ,int ,int) ;
 scalar_t__ stub3 (struct dvb_usb_adapter*,scalar_t__) ;
 int stub4 (struct dvb_usb_adapter*,int) ;
 int usb_urb_kill (int *) ;
 int usb_urb_submit (int *) ;

__attribute__((used)) static int dvb_usb_ctrl_feed(struct dvb_demux_feed *dvbdmxfeed, int onoff)
{
 struct dvb_usb_adapter *adap = dvbdmxfeed->demux->priv;
 int newfeedcount,ret;

 if (adap == ((void*)0))
  return -ENODEV;

 newfeedcount = adap->feedcount + (onoff ? 1 : -1);


 if (newfeedcount == 0) {
  deb_ts("stop feeding\n");
  usb_urb_kill(&adap->stream);

  if (adap->props.streaming_ctrl != ((void*)0))
   if ((ret = adap->props.streaming_ctrl(adap,0)))
    err("error while stopping stream.");
 }

 adap->feedcount = newfeedcount;


 deb_ts("setting pid (%s): %5d %04x at index %d '%s'\n",adap->pid_filtering ?
  "yes" : "no", dvbdmxfeed->pid,dvbdmxfeed->pid,dvbdmxfeed->index,onoff ?
  "on" : "off");
 if (adap->props.caps & DVB_USB_ADAP_HAS_PID_FILTER &&
  adap->pid_filtering &&
  adap->props.pid_filter != ((void*)0))
  adap->props.pid_filter(adap, dvbdmxfeed->index, dvbdmxfeed->pid,onoff);




 if (adap->feedcount == onoff && adap->feedcount > 0) {
  deb_ts("submitting all URBs\n");
  usb_urb_submit(&adap->stream);

  deb_ts("controlling pid parser\n");
  if (adap->props.caps & DVB_USB_ADAP_HAS_PID_FILTER &&
   adap->props.caps & DVB_USB_ADAP_PID_FILTER_CAN_BE_TURNED_OFF &&
   adap->props.pid_filter_ctrl != ((void*)0))
   if (adap->props.pid_filter_ctrl(adap,adap->pid_filtering) < 0)
    err("could not handle pid_parser");

  deb_ts("start feeding\n");
  if (adap->props.streaming_ctrl != ((void*)0))
   if (adap->props.streaming_ctrl(adap,1)) {
    err("error while enabling fifo.");
    return -ENODEV;
   }

 }
 return 0;
}
