
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; } ;
struct efx_nic {int rx_checksum_enabled; int workqueue; int workqueue_name; TYPE_2__* type; int interrupt_mode; int * channel; int flush_wq; int mac_work; TYPE_1__ mdio; int * phy_op; int mac_lock; int stats_lock; struct net_device* net_dev; int name; int state; int msg_enable; struct pci_dev* pci_dev; int selftest_work; int monitor_work; int reset_work; int mtd_list; int biu_lock; } ;
struct TYPE_4__ {int phys_addr_channels; int max_interrupt_mode; } ;


 int EFX_BUG_ON_PARANOID (int) ;
 int EFX_MAX_CHANNELS ;
 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int STATE_UNINIT ;
 int create_singlethread_workqueue (int ) ;
 int debug ;
 int efx_alloc_channel (struct efx_nic*,int,int *) ;
 int efx_dummy_phy_operations ;
 int efx_fini_struct (struct efx_nic*) ;
 int efx_mac_work ;
 int efx_monitor ;
 int efx_reset_work ;
 int efx_selftest_async_work ;
 int init_waitqueue_head (int *) ;
 int interrupt_mode ;
 int max (int ,int ) ;
 int mutex_init (int *) ;
 char* pci_name (struct pci_dev*) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int efx_init_struct(struct efx_nic *efx,
      struct pci_dev *pci_dev, struct net_device *net_dev)
{
 int i;


 spin_lock_init(&efx->biu_lock);



 INIT_WORK(&efx->reset_work, efx_reset_work);
 INIT_DELAYED_WORK(&efx->monitor_work, efx_monitor);
 INIT_DELAYED_WORK(&efx->selftest_work, efx_selftest_async_work);
 efx->pci_dev = pci_dev;
 efx->msg_enable = debug;
 efx->state = STATE_UNINIT;
 strlcpy(efx->name, pci_name(pci_dev), sizeof(efx->name));

 efx->net_dev = net_dev;
 efx->rx_checksum_enabled = 1;
 spin_lock_init(&efx->stats_lock);
 mutex_init(&efx->mac_lock);
 efx->phy_op = &efx_dummy_phy_operations;
 efx->mdio.dev = net_dev;
 INIT_WORK(&efx->mac_work, efx_mac_work);
 init_waitqueue_head(&efx->flush_wq);

 for (i = 0; i < EFX_MAX_CHANNELS; i++) {
  efx->channel[i] = efx_alloc_channel(efx, i, ((void*)0));
  if (!efx->channel[i])
   goto fail;
 }

 EFX_BUG_ON_PARANOID(efx->type->phys_addr_channels > EFX_MAX_CHANNELS);


 efx->interrupt_mode = max(efx->type->max_interrupt_mode,
      interrupt_mode);


 snprintf(efx->workqueue_name, sizeof(efx->workqueue_name), "sfc%s",
   pci_name(pci_dev));
 efx->workqueue = create_singlethread_workqueue(efx->workqueue_name);
 if (!efx->workqueue)
  goto fail;

 return 0;

fail:
 efx_fini_struct(efx);
 return -ENOMEM;
}
