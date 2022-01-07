
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int family; int usec_timeout; TYPE_1__* mc_fw; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ data; } ;






 int EINVAL ;
 int MC_SEQ_IO_DEBUG_DATA ;
 int MC_SEQ_IO_DEBUG_INDEX ;
 int MC_SEQ_SUP_CNTL ;
 int MC_SEQ_SUP_PGM ;
 int MC_SEQ_TRAIN_WAKEUP_CNTL ;
 int MC_SHARED_BLACKOUT_CNTL ;
 int OLAND_MC_UCODE_SIZE ;
 int RREG32 (int ) ;
 int RUN_MASK ;
 int SI_MC_UCODE_SIZE ;
 int TAHITI_IO_MC_REGS_SIZE ;
 int TRAIN_DONE_D0 ;
 int TRAIN_DONE_D1 ;
 int WREG32 (int ,int) ;
 int be32_to_cpup (int ) ;
 int oland_io_mc_regs ;
 int pitcairn_io_mc_regs ;
 int tahiti_io_mc_regs ;
 int udelay (int) ;
 int verde_io_mc_regs ;

__attribute__((used)) static int si_mc_load_microcode(struct radeon_device *rdev)
{
 const __be32 *fw_data;
 u32 running, blackout = 0;
 u32 *io_mc_regs;
 int i, ucode_size, regs_size;

 if (!rdev->mc_fw)
  return -EINVAL;

 switch (rdev->family) {
 case 129:
  io_mc_regs = (u32 *)&tahiti_io_mc_regs;
  ucode_size = SI_MC_UCODE_SIZE;
  regs_size = TAHITI_IO_MC_REGS_SIZE;
  break;
 case 130:
  io_mc_regs = (u32 *)&pitcairn_io_mc_regs;
  ucode_size = SI_MC_UCODE_SIZE;
  regs_size = TAHITI_IO_MC_REGS_SIZE;
  break;
 case 128:
 default:
  io_mc_regs = (u32 *)&verde_io_mc_regs;
  ucode_size = SI_MC_UCODE_SIZE;
  regs_size = TAHITI_IO_MC_REGS_SIZE;
  break;
 case 131:
  io_mc_regs = (u32 *)&oland_io_mc_regs;
  ucode_size = OLAND_MC_UCODE_SIZE;
  regs_size = TAHITI_IO_MC_REGS_SIZE;
  break;
 }

 running = RREG32(MC_SEQ_SUP_CNTL) & RUN_MASK;

 if (running == 0) {
  if (running) {
   blackout = RREG32(MC_SHARED_BLACKOUT_CNTL);
   WREG32(MC_SHARED_BLACKOUT_CNTL, blackout | 1);
  }


  WREG32(MC_SEQ_SUP_CNTL, 0x00000008);
  WREG32(MC_SEQ_SUP_CNTL, 0x00000010);


  for (i = 0; i < regs_size; i++) {
   WREG32(MC_SEQ_IO_DEBUG_INDEX, io_mc_regs[(i << 1)]);
   WREG32(MC_SEQ_IO_DEBUG_DATA, io_mc_regs[(i << 1) + 1]);
  }

  fw_data = (const __be32 *)rdev->mc_fw->data;
  for (i = 0; i < ucode_size; i++)
   WREG32(MC_SEQ_SUP_PGM, be32_to_cpup(fw_data++));


  WREG32(MC_SEQ_SUP_CNTL, 0x00000008);
  WREG32(MC_SEQ_SUP_CNTL, 0x00000004);
  WREG32(MC_SEQ_SUP_CNTL, 0x00000001);


  for (i = 0; i < rdev->usec_timeout; i++) {
   if (RREG32(MC_SEQ_TRAIN_WAKEUP_CNTL) & TRAIN_DONE_D0)
    break;
   udelay(1);
  }
  for (i = 0; i < rdev->usec_timeout; i++) {
   if (RREG32(MC_SEQ_TRAIN_WAKEUP_CNTL) & TRAIN_DONE_D1)
    break;
   udelay(1);
  }

  if (running)
   WREG32(MC_SHARED_BLACKOUT_CNTL, blackout);
 }

 return 0;
}
