
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rx_function; } ;
struct z8530_dev {TYPE_1__ chanA; } ;
struct net_device {int dummy; } ;


 struct z8530_dev* dev_to_sv (struct net_device*) ;
 int dma ;
 int hdlc_open (struct net_device*) ;
 int hostess_input ;
 int netif_start_queue (struct net_device*) ;
 int z8530_sync_close (struct net_device*,TYPE_1__*) ;
 int z8530_sync_dma_close (struct net_device*,TYPE_1__*) ;
 int z8530_sync_dma_open (struct net_device*,TYPE_1__*) ;
 int z8530_sync_open (struct net_device*,TYPE_1__*) ;
 int z8530_sync_txdma_close (struct net_device*,TYPE_1__*) ;
 int z8530_sync_txdma_open (struct net_device*,TYPE_1__*) ;

__attribute__((used)) static int hostess_open(struct net_device *d)
{
 struct z8530_dev *sv11 = dev_to_sv(d);
 int err = -1;




 switch (dma) {
  case 0:
   err = z8530_sync_open(d, &sv11->chanA);
   break;
  case 1:
   err = z8530_sync_dma_open(d, &sv11->chanA);
   break;
  case 2:
   err = z8530_sync_txdma_open(d, &sv11->chanA);
   break;
 }

 if (err)
  return err;

 err = hdlc_open(d);
 if (err) {
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
  return err;
 }
 sv11->chanA.rx_function = hostess_input;





 netif_start_queue(d);
 return 0;
}
