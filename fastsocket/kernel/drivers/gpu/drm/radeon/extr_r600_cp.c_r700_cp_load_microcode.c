
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* me_fw; TYPE_1__* pfp_fw; } ;
typedef TYPE_3__ drm_radeon_private_t ;
typedef int __be32 ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ data; } ;


 int R600_BUF_SWAP_32BIT ;
 int R600_CP_ME_RAM_DATA ;
 int R600_CP_ME_RAM_RADDR ;
 int R600_CP_ME_RAM_WADDR ;
 int R600_CP_PFP_UCODE_ADDR ;
 int R600_CP_PFP_UCODE_DATA ;
 int R600_CP_RB_CNTL ;
 int R600_GRBM_SOFT_RESET ;
 int R600_RB_BLKSZ (int) ;
 int R600_RB_BUFSZ (int) ;
 int R600_RB_NO_UPDATE ;
 int R600_SOFT_RESET_CP ;
 int R700_PFP_UCODE_SIZE ;
 int R700_PM4_UCODE_SIZE ;
 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int) ;
 int be32_to_cpup (int ) ;
 int mdelay (int) ;
 int r600_do_cp_stop (TYPE_3__*) ;

__attribute__((used)) static void r700_cp_load_microcode(drm_radeon_private_t *dev_priv)
{
 const __be32 *fw_data;
 int i;

 if (!dev_priv->me_fw || !dev_priv->pfp_fw)
  return;

 r600_do_cp_stop(dev_priv);

 RADEON_WRITE(R600_CP_RB_CNTL,



       R600_RB_NO_UPDATE |
       R600_RB_BLKSZ(15) |
       R600_RB_BUFSZ(3));

 RADEON_WRITE(R600_GRBM_SOFT_RESET, R600_SOFT_RESET_CP);
 RADEON_READ(R600_GRBM_SOFT_RESET);
 mdelay(15);
 RADEON_WRITE(R600_GRBM_SOFT_RESET, 0);

 fw_data = (const __be32 *)dev_priv->pfp_fw->data;
 RADEON_WRITE(R600_CP_PFP_UCODE_ADDR, 0);
 for (i = 0; i < R700_PFP_UCODE_SIZE; i++)
  RADEON_WRITE(R600_CP_PFP_UCODE_DATA, be32_to_cpup(fw_data++));
 RADEON_WRITE(R600_CP_PFP_UCODE_ADDR, 0);

 fw_data = (const __be32 *)dev_priv->me_fw->data;
 RADEON_WRITE(R600_CP_ME_RAM_WADDR, 0);
 for (i = 0; i < R700_PM4_UCODE_SIZE; i++)
  RADEON_WRITE(R600_CP_ME_RAM_DATA, be32_to_cpup(fw_data++));
 RADEON_WRITE(R600_CP_ME_RAM_WADDR, 0);

 RADEON_WRITE(R600_CP_PFP_UCODE_ADDR, 0);
 RADEON_WRITE(R600_CP_ME_RAM_WADDR, 0);
 RADEON_WRITE(R600_CP_ME_RAM_RADDR, 0);

}
