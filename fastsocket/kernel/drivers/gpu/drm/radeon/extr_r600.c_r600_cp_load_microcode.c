
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_device {TYPE_2__* pfp_fw; TYPE_1__* me_fw; } ;
typedef int __be32 ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int BUF_SWAP_32BIT ;
 int CP_ME_RAM_DATA ;
 int CP_ME_RAM_RADDR ;
 int CP_ME_RAM_WADDR ;
 int CP_PFP_UCODE_ADDR ;
 int CP_PFP_UCODE_DATA ;
 int CP_RB_CNTL ;
 int EINVAL ;
 int GRBM_SOFT_RESET ;
 int PFP_UCODE_SIZE ;
 int PM4_UCODE_SIZE ;
 int RB_BLKSZ (int) ;
 int RB_BUFSZ (int) ;
 int RB_NO_UPDATE ;
 int RREG32 (int ) ;
 int SOFT_RESET_CP ;
 int WREG32 (int ,int) ;
 int be32_to_cpup (int ) ;
 int mdelay (int) ;
 int r600_cp_stop (struct radeon_device*) ;

__attribute__((used)) static int r600_cp_load_microcode(struct radeon_device *rdev)
{
 const __be32 *fw_data;
 int i;

 if (!rdev->me_fw || !rdev->pfp_fw)
  return -EINVAL;

 r600_cp_stop(rdev);

 WREG32(CP_RB_CNTL,



        RB_NO_UPDATE | RB_BLKSZ(15) | RB_BUFSZ(3));


 WREG32(GRBM_SOFT_RESET, SOFT_RESET_CP);
 RREG32(GRBM_SOFT_RESET);
 mdelay(15);
 WREG32(GRBM_SOFT_RESET, 0);

 WREG32(CP_ME_RAM_WADDR, 0);

 fw_data = (const __be32 *)rdev->me_fw->data;
 WREG32(CP_ME_RAM_WADDR, 0);
 for (i = 0; i < PM4_UCODE_SIZE * 3; i++)
  WREG32(CP_ME_RAM_DATA,
         be32_to_cpup(fw_data++));

 fw_data = (const __be32 *)rdev->pfp_fw->data;
 WREG32(CP_PFP_UCODE_ADDR, 0);
 for (i = 0; i < PFP_UCODE_SIZE; i++)
  WREG32(CP_PFP_UCODE_DATA,
         be32_to_cpup(fw_data++));

 WREG32(CP_PFP_UCODE_ADDR, 0);
 WREG32(CP_ME_RAM_WADDR, 0);
 WREG32(CP_ME_RAM_RADDR, 0);
 return 0;
}
