
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_dword_t ;


 int EFX_POPULATE_DWORD_1 (int ,int ,int) ;
 int FRF_AA_INT_ACK_KER_FIELD ;
 int FR_AA_INT_ACK_KER ;
 int FR_AA_WORK_AROUND_BROKEN_PCI_READS ;
 int efx_readd (struct efx_nic*,int *,int ) ;
 int efx_writed (struct efx_nic*,int *,int ) ;

inline void falcon_irq_ack_a1(struct efx_nic *efx)
{
 efx_dword_t reg;

 EFX_POPULATE_DWORD_1(reg, FRF_AA_INT_ACK_KER_FIELD, 0xb7eb7e);
 efx_writed(efx, &reg, FR_AA_INT_ACK_KER);
 efx_readd(efx, &reg, FR_AA_WORK_AROUND_BROKEN_PCI_READS);
}
