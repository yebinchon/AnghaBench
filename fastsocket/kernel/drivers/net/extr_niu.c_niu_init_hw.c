
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_ring_info {int dummy; } ;
struct niu {int num_tx_rings; TYPE_1__* dev; struct tx_ring_info* tx_rings; } ;
struct TYPE_2__ {int name; } ;


 int IFUP ;
 int niu_disable_ipp (struct niu*) ;
 int niu_init_classifier_hw (struct niu*) ;
 int niu_init_ipp (struct niu*) ;
 int niu_init_mac (struct niu*) ;
 int niu_init_one_tx_channel (struct niu*,struct tx_ring_info*) ;
 int niu_init_rx_channels (struct niu*) ;
 int niu_init_zcp (struct niu*) ;
 int niu_reset_rx_channels (struct niu*) ;
 int niu_reset_tx_channels (struct niu*) ;
 int niu_stop_rx_channels (struct niu*) ;
 int niu_stop_tx_channels (struct niu*) ;
 int niu_txc_enable_port (struct niu*,int) ;
 int niu_txc_port_dma_enable (struct niu*,int) ;
 int niu_txc_set_imask (struct niu*,int ) ;
 int niudbg (int ,char*,int ) ;

__attribute__((used)) static int niu_init_hw(struct niu *np)
{
 int i, err;

 niudbg(IFUP, "%s: Initialize TXC\n", np->dev->name);
 niu_txc_enable_port(np, 1);
 niu_txc_port_dma_enable(np, 1);
 niu_txc_set_imask(np, 0);

 niudbg(IFUP, "%s: Initialize TX channels\n", np->dev->name);
 for (i = 0; i < np->num_tx_rings; i++) {
  struct tx_ring_info *rp = &np->tx_rings[i];

  err = niu_init_one_tx_channel(np, rp);
  if (err)
   return err;
 }

 niudbg(IFUP, "%s: Initialize RX channels\n", np->dev->name);
 err = niu_init_rx_channels(np);
 if (err)
  goto out_uninit_tx_channels;

 niudbg(IFUP, "%s: Initialize classifier\n", np->dev->name);
 err = niu_init_classifier_hw(np);
 if (err)
  goto out_uninit_rx_channels;

 niudbg(IFUP, "%s: Initialize ZCP\n", np->dev->name);
 err = niu_init_zcp(np);
 if (err)
  goto out_uninit_rx_channels;

 niudbg(IFUP, "%s: Initialize IPP\n", np->dev->name);
 err = niu_init_ipp(np);
 if (err)
  goto out_uninit_rx_channels;

 niudbg(IFUP, "%s: Initialize MAC\n", np->dev->name);
 err = niu_init_mac(np);
 if (err)
  goto out_uninit_ipp;

 return 0;

out_uninit_ipp:
 niudbg(IFUP, "%s: Uninit IPP\n", np->dev->name);
 niu_disable_ipp(np);

out_uninit_rx_channels:
 niudbg(IFUP, "%s: Uninit RX channels\n", np->dev->name);
 niu_stop_rx_channels(np);
 niu_reset_rx_channels(np);

out_uninit_tx_channels:
 niudbg(IFUP, "%s: Uninit TX channels\n", np->dev->name);
 niu_stop_tx_channels(np);
 niu_reset_tx_channels(np);

 return err;
}
