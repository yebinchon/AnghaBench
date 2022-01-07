
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct siena_nic_data {int dummy; } ;
struct TYPE_5__ {int dma_addr; int addr; } ;
struct TYPE_4__ {int prtad; } ;
struct efx_nic {struct siena_nic_data* nic_data; TYPE_2__ irq_status; TYPE_1__ mdio; int phy_type; int net_dev; scalar_t__ port_num; } ;
typedef int efx_oword_t ;


 int BUG_ON (int) ;
 scalar_t__ EFX_OWORD_FIELD (int ,int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int FRF_CZ_CS_PORT_NUM ;
 int FR_AZ_CS_DEBUG ;
 int GFP_KERNEL ;
 int MDIO_PRTAD_NONE ;
 int PHY_TYPE_NONE ;
 int RESET_TYPE_ALL ;
 int efx_mcdi_drv_attach (struct efx_nic*,int,int*) ;
 int efx_mcdi_handle_assertion (struct efx_nic*) ;
 int efx_mcdi_init (struct efx_nic*) ;
 int efx_mcdi_mon_probe (struct efx_nic*) ;
 int efx_nic_alloc_buffer (struct efx_nic*,TYPE_2__*,int) ;
 scalar_t__ efx_nic_fpga_ver (struct efx_nic*) ;
 int efx_nic_free_buffer (struct efx_nic*,TYPE_2__*) ;
 int efx_ptp_probe (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_sriov_probe (struct efx_nic*) ;
 int kfree (struct siena_nic_data*) ;
 struct siena_nic_data* kzalloc (int,int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,unsigned long long,int ,unsigned long long) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int probe ;
 int siena_init_wol (struct efx_nic*) ;
 int siena_probe_nvconfig (struct efx_nic*) ;
 int siena_reset_hw (struct efx_nic*,int ) ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static int siena_probe_nic(struct efx_nic *efx)
{
 struct siena_nic_data *nic_data;
 bool already_attached = 0;
 efx_oword_t reg;
 int rc;


 nic_data = kzalloc(sizeof(struct siena_nic_data), GFP_KERNEL);
 if (!nic_data)
  return -ENOMEM;
 efx->nic_data = nic_data;

 if (efx_nic_fpga_ver(efx) != 0) {
  netif_err(efx, probe, efx->net_dev,
     "Siena FPGA not supported\n");
  rc = -ENODEV;
  goto fail1;
 }

 efx_reado(efx, &reg, FR_AZ_CS_DEBUG);
 efx->port_num = EFX_OWORD_FIELD(reg, FRF_CZ_CS_PORT_NUM) - 1;

 efx_mcdi_init(efx);


 rc = efx_mcdi_handle_assertion(efx);
 if (rc)
  goto fail1;



 rc = efx_mcdi_drv_attach(efx, 1, &already_attached);
 if (rc) {
  netif_err(efx, probe, efx->net_dev,
     "Unable to register driver with MCPU\n");
  goto fail2;
 }
 if (already_attached)

  netif_err(efx, probe, efx->net_dev,
     "Host already registered with MCPU\n");


 rc = siena_reset_hw(efx, RESET_TYPE_ALL);
 if (rc) {
  netif_err(efx, probe, efx->net_dev, "failed to reset NIC\n");
  goto fail3;
 }

 siena_init_wol(efx);


 rc = efx_nic_alloc_buffer(efx, &efx->irq_status, sizeof(efx_oword_t));
 if (rc)
  goto fail4;
 BUG_ON(efx->irq_status.dma_addr & 0x0f);

 netif_dbg(efx, probe, efx->net_dev,
    "INT_KER at %llx (virt %p phys %llx)\n",
    (unsigned long long)efx->irq_status.dma_addr,
    efx->irq_status.addr,
    (unsigned long long)virt_to_phys(efx->irq_status.addr));


 rc = siena_probe_nvconfig(efx);
 if (rc == -EINVAL) {
  netif_err(efx, probe, efx->net_dev,
     "NVRAM is invalid therefore using defaults\n");
  efx->phy_type = PHY_TYPE_NONE;
  efx->mdio.prtad = MDIO_PRTAD_NONE;
 } else if (rc) {
  goto fail5;
 }

 rc = efx_mcdi_mon_probe(efx);
 if (rc)
  goto fail5;

 efx_sriov_probe(efx);
 efx_ptp_probe(efx);

 return 0;

fail5:
 efx_nic_free_buffer(efx, &efx->irq_status);
fail4:
fail3:
 efx_mcdi_drv_attach(efx, 0, ((void*)0));
fail2:
fail1:
 kfree(efx->nic_data);
 return rc;
}
