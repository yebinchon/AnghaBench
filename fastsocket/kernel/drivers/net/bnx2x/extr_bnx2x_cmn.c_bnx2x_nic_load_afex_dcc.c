
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ shmem2_base; } ;
struct bnx2x {int afex_def_vlan_tag; TYPE_1__ common; } ;


 int FW_MSG_CODE_DRV_LOAD_COMMON ;
 int FW_MSG_CODE_DRV_LOAD_COMMON_CHIP ;
 scalar_t__ SHMEM2_HAS (struct bnx2x*,int ) ;
 int SHMEM2_WR (struct bnx2x*,int ,int) ;
 int SHMEM_AFEX_SUPPORTED_VERSION_ONE ;
 int SHMEM_DCC_SUPPORT_BANDWIDTH_ALLOCATION_TLV ;
 int SHMEM_DCC_SUPPORT_DISABLE_ENABLE_PF_TLV ;
 int afex_driver_support ;
 int dcc_support ;

__attribute__((used)) static void bnx2x_nic_load_afex_dcc(struct bnx2x *bp, int load_code)
{
 if (((load_code == FW_MSG_CODE_DRV_LOAD_COMMON) ||
      (load_code == FW_MSG_CODE_DRV_LOAD_COMMON_CHIP)) &&
     (bp->common.shmem2_base)) {
  if (SHMEM2_HAS(bp, dcc_support))
   SHMEM2_WR(bp, dcc_support,
      (SHMEM_DCC_SUPPORT_DISABLE_ENABLE_PF_TLV |
       SHMEM_DCC_SUPPORT_BANDWIDTH_ALLOCATION_TLV));
  if (SHMEM2_HAS(bp, afex_driver_support))
   SHMEM2_WR(bp, afex_driver_support,
      SHMEM_AFEX_SUPPORTED_VERSION_ONE);
 }


 bp->afex_def_vlan_tag = -1;
}
