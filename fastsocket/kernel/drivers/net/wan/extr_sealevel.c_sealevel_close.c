
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct slvl_device {int channel; TYPE_1__* chan; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int rx_function; } ;


 struct slvl_device* dev_to_chan (struct net_device*) ;
 int hdlc_close (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int z8530_null_rx ;
 int z8530_sync_close (struct net_device*,TYPE_1__*) ;
 int z8530_sync_dma_close (struct net_device*,TYPE_1__*) ;

__attribute__((used)) static int sealevel_close(struct net_device *d)
{
 struct slvl_device *slvl = dev_to_chan(d);
 int unit = slvl->channel;





 slvl->chan->rx_function = z8530_null_rx;

 hdlc_close(d);
 netif_stop_queue(d);

 switch (unit)
 {
  case 0:
   z8530_sync_dma_close(d, slvl->chan);
   break;
  case 1:
   z8530_sync_close(d, slvl->chan);
   break;
 }
 return 0;
}
