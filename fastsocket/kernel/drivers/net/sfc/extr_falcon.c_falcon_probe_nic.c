
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct pci_dev {scalar_t__ bus; scalar_t__ devfn; } ;
struct falcon_nic_data {int stats_disable_count; struct pci_dev* pci_dev2; int stats_timer; } ;
struct TYPE_10__ {int * parent; } ;
struct TYPE_13__ {int name; TYPE_1__ dev; TYPE_7__* algo_data; int owner; } ;
struct TYPE_14__ {struct efx_nic* data; } ;
struct falcon_board {TYPE_4__ i2c_adap; TYPE_2__* type; TYPE_7__ i2c_data; } ;
struct TYPE_15__ {int dma_addr; int addr; } ;
struct efx_nic {int timer_quantum_ns; struct falcon_nic_data* nic_data; TYPE_8__ irq_status; int net_dev; TYPE_3__* pci_dev; } ;
typedef int efx_oword_t ;
struct TYPE_12__ {int revision; scalar_t__ bus; scalar_t__ devfn; int dev; } ;
struct TYPE_11__ {int (* init ) (struct efx_nic*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ EFX_OWORD_FIELD (int ,int ) ;
 scalar_t__ EFX_REV_FALCON_A1 ;
 int EFX_VENDID_SFC ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int FALCON_A_S_DEVID ;
 int FRF_AA_STRAP_PCIE ;
 int FRF_AB_STRAP_10G ;
 int FR_AB_NIC_STAT ;
 int GFP_KERNEL ;
 int RESET_TYPE_ALL ;
 int THIS_MODULE ;
 int __falcon_reset_hw (struct efx_nic*,int ) ;
 int efx_nic_alloc_buffer (struct efx_nic*,TYPE_8__*,int) ;
 scalar_t__ efx_nic_fpga_ver (struct efx_nic*) ;
 int efx_nic_free_buffer (struct efx_nic*,TYPE_8__*) ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 struct falcon_board* falcon_board (struct efx_nic*) ;
 TYPE_7__ falcon_i2c_bit_operations ;
 int falcon_probe_nvconfig (struct efx_nic*) ;
 int falcon_probe_spi_devices (struct efx_nic*) ;
 int falcon_stats_timer_func ;
 int i2c_bit_add_bus (TYPE_4__*) ;
 int i2c_del_adapter (TYPE_4__*) ;
 int kfree (struct falcon_nic_data*) ;
 struct falcon_nic_data* kzalloc (int,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ,int ,int ) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 struct pci_dev* pci_dev_get (TYPE_3__*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int probe ;
 int setup_timer (int *,int *,unsigned long) ;
 int strlcpy (int ,char*,int) ;
 int stub1 (struct efx_nic*) ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static int falcon_probe_nic(struct efx_nic *efx)
{
 struct falcon_nic_data *nic_data;
 struct falcon_board *board;
 int rc;


 nic_data = kzalloc(sizeof(*nic_data), GFP_KERNEL);
 if (!nic_data)
  return -ENOMEM;
 efx->nic_data = nic_data;

 rc = -ENODEV;

 if (efx_nic_fpga_ver(efx) != 0) {
  netif_err(efx, probe, efx->net_dev,
     "Falcon FPGA not supported\n");
  goto fail1;
 }

 if (efx_nic_rev(efx) <= EFX_REV_FALCON_A1) {
  efx_oword_t nic_stat;
  struct pci_dev *dev;
  u8 pci_rev = efx->pci_dev->revision;

  if ((pci_rev == 0xff) || (pci_rev == 0)) {
   netif_err(efx, probe, efx->net_dev,
      "Falcon rev A0 not supported\n");
   goto fail1;
  }
  efx_reado(efx, &nic_stat, FR_AB_NIC_STAT);
  if (EFX_OWORD_FIELD(nic_stat, FRF_AB_STRAP_10G) == 0) {
   netif_err(efx, probe, efx->net_dev,
      "Falcon rev A1 1G not supported\n");
   goto fail1;
  }
  if (EFX_OWORD_FIELD(nic_stat, FRF_AA_STRAP_PCIE) == 0) {
   netif_err(efx, probe, efx->net_dev,
      "Falcon rev A1 PCI-X not supported\n");
   goto fail1;
  }

  dev = pci_dev_get(efx->pci_dev);
  while ((dev = pci_get_device(EFX_VENDID_SFC, FALCON_A_S_DEVID,
          dev))) {
   if (dev->bus == efx->pci_dev->bus &&
       dev->devfn == efx->pci_dev->devfn + 1) {
    nic_data->pci_dev2 = dev;
    break;
   }
  }
  if (!nic_data->pci_dev2) {
   netif_err(efx, probe, efx->net_dev,
      "failed to find secondary function\n");
   rc = -ENODEV;
   goto fail2;
  }
 }


 rc = __falcon_reset_hw(efx, RESET_TYPE_ALL);
 if (rc) {
  netif_err(efx, probe, efx->net_dev, "failed to reset NIC\n");
  goto fail3;
 }


 rc = efx_nic_alloc_buffer(efx, &efx->irq_status, sizeof(efx_oword_t));
 if (rc)
  goto fail4;
 BUG_ON(efx->irq_status.dma_addr & 0x0f);

 netif_dbg(efx, probe, efx->net_dev,
    "INT_KER at %llx (virt %p phys %llx)\n",
    (u64)efx->irq_status.dma_addr,
    efx->irq_status.addr,
    (u64)virt_to_phys(efx->irq_status.addr));

 falcon_probe_spi_devices(efx);


 rc = falcon_probe_nvconfig(efx);
 if (rc) {
  if (rc == -EINVAL)
   netif_err(efx, probe, efx->net_dev, "NVRAM is invalid\n");
  goto fail5;
 }

 efx->timer_quantum_ns = 4968;


 board = falcon_board(efx);
 board->i2c_adap.owner = THIS_MODULE;
 board->i2c_data = falcon_i2c_bit_operations;
 board->i2c_data.data = efx;
 board->i2c_adap.algo_data = &board->i2c_data;
 board->i2c_adap.dev.parent = &efx->pci_dev->dev;
 strlcpy(board->i2c_adap.name, "SFC4000 GPIO",
  sizeof(board->i2c_adap.name));
 rc = i2c_bit_add_bus(&board->i2c_adap);
 if (rc)
  goto fail5;

 rc = falcon_board(efx)->type->init(efx);
 if (rc) {
  netif_err(efx, probe, efx->net_dev,
     "failed to initialise board\n");
  goto fail6;
 }

 nic_data->stats_disable_count = 1;
 setup_timer(&nic_data->stats_timer, &falcon_stats_timer_func,
      (unsigned long)efx);

 return 0;

 fail6:
 BUG_ON(i2c_del_adapter(&board->i2c_adap));
 memset(&board->i2c_adap, 0, sizeof(board->i2c_adap));
 fail5:
 efx_nic_free_buffer(efx, &efx->irq_status);
 fail4:
 fail3:
 if (nic_data->pci_dev2) {
  pci_dev_put(nic_data->pci_dev2);
  nic_data->pci_dev2 = ((void*)0);
 }
 fail2:
 fail1:
 kfree(efx->nic_data);
 return rc;
}
