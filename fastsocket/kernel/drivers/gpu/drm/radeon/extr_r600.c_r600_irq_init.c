
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int gpu_addr; scalar_t__ enabled; } ;
struct TYPE_3__ {int gpu_addr; int ring_size; } ;
struct radeon_device {scalar_t__ family; int pdev; scalar_t__ msi_enabled; TYPE_2__ wb; TYPE_1__ ih; } ;


 scalar_t__ CHIP_CEDAR ;
 int IH_CNTL ;
 int IH_DUMMY_RD_OVERRIDE ;
 int IH_RB_BASE ;
 int IH_RB_CNTL ;
 int IH_RB_RPTR ;
 int IH_RB_WPTR ;
 int IH_RB_WPTR_ADDR_HI ;
 int IH_RB_WPTR_ADDR_LO ;
 int IH_REQ_NONSNOOP_EN ;
 int IH_WPTR_OVERFLOW_CLEAR ;
 int IH_WPTR_OVERFLOW_ENABLE ;
 int IH_WPTR_WRITEBACK_ENABLE ;
 int INTERRUPT_CNTL ;
 int INTERRUPT_CNTL2 ;
 int MC_WRREQ_CREDIT (int) ;
 int MC_WR_CLEAN_CNT (int) ;
 int R600_WB_IH_WPTR_OFFSET ;
 int RPTR_REARM ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int drm_order (int) ;
 int evergreen_disable_interrupt_state (struct radeon_device*) ;
 int pci_set_master (int ) ;
 int r600_disable_interrupt_state (struct radeon_device*) ;
 int r600_disable_interrupts (struct radeon_device*) ;
 int r600_enable_interrupts (struct radeon_device*) ;
 int r600_ih_ring_alloc (struct radeon_device*) ;
 int r600_ih_ring_fini (struct radeon_device*) ;
 int r600_rlc_init (struct radeon_device*) ;
 int upper_32_bits (int) ;

int r600_irq_init(struct radeon_device *rdev)
{
 int ret = 0;
 int rb_bufsz;
 u32 interrupt_cntl, ih_cntl, ih_rb_cntl;


 ret = r600_ih_ring_alloc(rdev);
 if (ret)
  return ret;


 r600_disable_interrupts(rdev);


 ret = r600_rlc_init(rdev);
 if (ret) {
  r600_ih_ring_fini(rdev);
  return ret;
 }



 WREG32(INTERRUPT_CNTL2, rdev->ih.gpu_addr >> 8);
 interrupt_cntl = RREG32(INTERRUPT_CNTL);



 interrupt_cntl &= ~IH_DUMMY_RD_OVERRIDE;

 interrupt_cntl &= ~IH_REQ_NONSNOOP_EN;
 WREG32(INTERRUPT_CNTL, interrupt_cntl);

 WREG32(IH_RB_BASE, rdev->ih.gpu_addr >> 8);
 rb_bufsz = drm_order(rdev->ih.ring_size / 4);

 ih_rb_cntl = (IH_WPTR_OVERFLOW_ENABLE |
        IH_WPTR_OVERFLOW_CLEAR |
        (rb_bufsz << 1));

 if (rdev->wb.enabled)
  ih_rb_cntl |= IH_WPTR_WRITEBACK_ENABLE;


 WREG32(IH_RB_WPTR_ADDR_LO, (rdev->wb.gpu_addr + R600_WB_IH_WPTR_OFFSET) & 0xFFFFFFFC);
 WREG32(IH_RB_WPTR_ADDR_HI, upper_32_bits(rdev->wb.gpu_addr + R600_WB_IH_WPTR_OFFSET) & 0xFF);

 WREG32(IH_RB_CNTL, ih_rb_cntl);


 WREG32(IH_RB_RPTR, 0);
 WREG32(IH_RB_WPTR, 0);


 ih_cntl = MC_WRREQ_CREDIT(0x10) | MC_WR_CLEAN_CNT(0x10);

 if (rdev->msi_enabled)
  ih_cntl |= RPTR_REARM;
 WREG32(IH_CNTL, ih_cntl);


 if (rdev->family >= CHIP_CEDAR)
  evergreen_disable_interrupt_state(rdev);
 else
  r600_disable_interrupt_state(rdev);


 pci_set_master(rdev->pdev);


 r600_enable_interrupts(rdev);

 return ret;
}
