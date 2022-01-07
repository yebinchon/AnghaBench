
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rx_function; } ;
struct z8530_dev {TYPE_1__ chanA; } ;
struct net_device {int dummy; } ;


 struct z8530_dev* dev_to_sv (struct net_device*) ;
 int dma ;
 int hdlc_close (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int z8530_null_rx ;
 int z8530_sync_close (struct net_device*,TYPE_1__*) ;
 int z8530_sync_dma_close (struct net_device*,TYPE_1__*) ;
 int z8530_sync_txdma_close (struct net_device*,TYPE_1__*) ;

__attribute__((used)) static int hostess_close(struct net_device *d)
{
 struct z8530_dev *sv11 = dev_to_sv(d);



 sv11->chanA.rx_function = z8530_null_rx;

 hdlc_close(d);
 netif_stop_queue(d);

 switch (dma) {
  case 0:
   z8530_sync_close(d, &sv11->chanA);
   break;
  case 1:
   z8530_sync_dma_close(d, &sv11->chanA);
   break;
  case 2:
   z8530_sync_txdma_close(d, &sv11->chanA);
   break;
 }
 return 0;
}
