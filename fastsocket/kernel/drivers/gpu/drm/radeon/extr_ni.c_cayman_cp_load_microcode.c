
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_device {TYPE_2__* me_fw; TYPE_1__* pfp_fw; } ;
typedef int __be32 ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int CAYMAN_PFP_UCODE_SIZE ;
 int CAYMAN_PM4_UCODE_SIZE ;
 int CP_ME_RAM_DATA ;
 int CP_ME_RAM_RADDR ;
 int CP_ME_RAM_WADDR ;
 int CP_PFP_UCODE_ADDR ;
 int CP_PFP_UCODE_DATA ;
 int EINVAL ;
 int WREG32 (int ,int ) ;
 int be32_to_cpup (int ) ;
 int cayman_cp_enable (struct radeon_device*,int) ;

__attribute__((used)) static int cayman_cp_load_microcode(struct radeon_device *rdev)
{
 const __be32 *fw_data;
 int i;

 if (!rdev->me_fw || !rdev->pfp_fw)
  return -EINVAL;

 cayman_cp_enable(rdev, 0);

 fw_data = (const __be32 *)rdev->pfp_fw->data;
 WREG32(CP_PFP_UCODE_ADDR, 0);
 for (i = 0; i < CAYMAN_PFP_UCODE_SIZE; i++)
  WREG32(CP_PFP_UCODE_DATA, be32_to_cpup(fw_data++));
 WREG32(CP_PFP_UCODE_ADDR, 0);

 fw_data = (const __be32 *)rdev->me_fw->data;
 WREG32(CP_ME_RAM_WADDR, 0);
 for (i = 0; i < CAYMAN_PM4_UCODE_SIZE; i++)
  WREG32(CP_ME_RAM_DATA, be32_to_cpup(fw_data++));

 WREG32(CP_PFP_UCODE_ADDR, 0);
 WREG32(CP_ME_RAM_WADDR, 0);
 WREG32(CP_ME_RAM_RADDR, 0);
 return 0;
}
