
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {int n_channels; TYPE_1__* type; int n_tx_channels; int net_dev; int rss_spread; int * rx_indir_table; int rx_hash_key; } ;
struct TYPE_2__ {int (* probe ) (struct efx_nic*) ;int (* remove ) (struct efx_nic*) ;int (* dimension_resources ) (struct efx_nic*) ;} ;


 size_t ARRAY_SIZE (int *) ;
 int efx_init_irq_moderation (struct efx_nic*,int ,int ,int,int) ;
 int efx_probe_interrupts (struct efx_nic*) ;
 int efx_set_channels (struct efx_nic*) ;
 int ethtool_rxfh_indir_default (size_t,int ) ;
 int get_random_bytes (int *,int) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int netif_set_real_num_tx_queues (int ,int ) ;
 int probe ;
 int rx_irq_mod_usec ;
 int stub1 (struct efx_nic*) ;
 int stub2 (struct efx_nic*) ;
 int stub3 (struct efx_nic*) ;
 int tx_irq_mod_usec ;

__attribute__((used)) static int efx_probe_nic(struct efx_nic *efx)
{
 size_t i;
 int rc;

 netif_dbg(efx, probe, efx->net_dev, "creating NIC\n");


 rc = efx->type->probe(efx);
 if (rc)
  return rc;



 rc = efx_probe_interrupts(efx);
 if (rc)
  goto fail;

 efx->type->dimension_resources(efx);

 if (efx->n_channels > 1)
  get_random_bytes(&efx->rx_hash_key, sizeof(efx->rx_hash_key));
 for (i = 0; i < ARRAY_SIZE(efx->rx_indir_table); i++)
  efx->rx_indir_table[i] =
   ethtool_rxfh_indir_default(i, efx->rss_spread);

 efx_set_channels(efx);
 netif_set_real_num_tx_queues(efx->net_dev, efx->n_tx_channels);


 efx_init_irq_moderation(efx, tx_irq_mod_usec, rx_irq_mod_usec, 1,
    1);

 return 0;

fail:
 efx->type->remove(efx);
 return rc;
}
