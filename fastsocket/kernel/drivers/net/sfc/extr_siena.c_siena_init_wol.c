
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siena_nic_data {int wol_filter_id; } ;
struct efx_nic {int pci_dev; struct siena_nic_data* nic_data; } ;


 int efx_mcdi_wol_filter_get_magic (struct efx_nic*,int*) ;
 int efx_mcdi_wol_filter_reset (struct efx_nic*) ;
 int pci_wake_from_d3 (int ,int) ;

__attribute__((used)) static void siena_init_wol(struct efx_nic *efx)
{
 struct siena_nic_data *nic_data = efx->nic_data;
 int rc;

 rc = efx_mcdi_wol_filter_get_magic(efx, &nic_data->wol_filter_id);

 if (rc != 0) {


  efx_mcdi_wol_filter_reset(efx);
  nic_data->wol_filter_id = -1;
 } else if (nic_data->wol_filter_id != -1) {
  pci_wake_from_d3(efx->pci_dev, 1);
 }
}
