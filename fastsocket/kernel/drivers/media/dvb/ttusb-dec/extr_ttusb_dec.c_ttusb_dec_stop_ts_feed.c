
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ttusb_dec {int pva_stream_count; } ;
struct dvb_demux_feed {TYPE_1__* demux; } ;
typedef int b0 ;
struct TYPE_2__ {struct ttusb_dec* priv; } ;


 int ttusb_dec_send_command (struct ttusb_dec*,int,int,int*,int *,int *) ;
 int ttusb_dec_stop_iso_xfer (struct ttusb_dec*) ;

__attribute__((used)) static int ttusb_dec_stop_ts_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct ttusb_dec *dec = dvbdmxfeed->demux->priv;
 u8 b0[] = { 0x00 };

 ttusb_dec_send_command(dec, 0x81, sizeof(b0), b0, ((void*)0), ((void*)0));

 dec->pva_stream_count--;

 ttusb_dec_stop_iso_xfer(dec);

 return 0;
}
