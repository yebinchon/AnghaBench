
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_net {int dvbdev; scalar_t__* state; struct dmx_demux* demux; } ;
struct dvb_adapter {int dummy; } ;
struct dmx_demux {int dummy; } ;


 int DVB_DEVICE_NET ;
 int DVB_NET_DEVICES_MAX ;
 int dvb_register_device (struct dvb_adapter*,int *,int *,struct dvb_net*,int ) ;
 int dvbdev_net ;

int dvb_net_init (struct dvb_adapter *adap, struct dvb_net *dvbnet,
    struct dmx_demux *dmx)
{
 int i;

 dvbnet->demux = dmx;

 for (i=0; i<DVB_NET_DEVICES_MAX; i++)
  dvbnet->state[i] = 0;

 dvb_register_device (adap, &dvbnet->dvbdev, &dvbdev_net,
        dvbnet, DVB_DEVICE_NET);

 return 0;
}
