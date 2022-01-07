
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int rptr; int ptr_mask; int lock; int * ring; int enabled; } ;
struct TYPE_7__ {int disp_int; int disp_int_cont; int disp_int_cont2; int disp_int_cont3; int disp_int_cont4; int disp_int_cont5; } ;
struct TYPE_8__ {TYPE_2__ evergreen; } ;
struct TYPE_9__ {TYPE_3__ stat_regs; int * pflip; int vblank_queue; int * crtc_vblank_int; } ;
struct TYPE_6__ {int vblank_sync; } ;
struct radeon_device {TYPE_5__ ih; int hotplug_work; int dev; TYPE_4__ irq; TYPE_1__ pm; int ddev; scalar_t__ shutdown; } ;


 int CAYMAN_RING_TYPE_CP1_INDEX ;
 int CAYMAN_RING_TYPE_CP2_INDEX ;
 int CAYMAN_RING_TYPE_DMA1_INDEX ;
 int DC_HPD1_INTERRUPT ;
 int DC_HPD2_INTERRUPT ;
 int DC_HPD3_INTERRUPT ;
 int DC_HPD4_INTERRUPT ;
 int DC_HPD5_INTERRUPT ;
 int DC_HPD6_INTERRUPT ;
 int DRM_DEBUG (char*,...) ;
 int IH_RB_RPTR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LB_D1_VBLANK_INTERRUPT ;
 int LB_D1_VLINE_INTERRUPT ;
 int LB_D2_VBLANK_INTERRUPT ;
 int LB_D2_VLINE_INTERRUPT ;
 int LB_D3_VBLANK_INTERRUPT ;
 int LB_D3_VLINE_INTERRUPT ;
 int LB_D4_VBLANK_INTERRUPT ;
 int LB_D4_VLINE_INTERRUPT ;
 int LB_D5_VBLANK_INTERRUPT ;
 int LB_D5_VLINE_INTERRUPT ;
 int LB_D6_VBLANK_INTERRUPT ;
 int LB_D6_VLINE_INTERRUPT ;
 int R600_RING_TYPE_DMA_INDEX ;
 int RADEON_RING_TYPE_GFX_INDEX ;
 int RREG32 (int ) ;
 int VM_CONTEXT1_CNTL2 ;
 int VM_CONTEXT1_PROTECTION_FAULT_ADDR ;
 int VM_CONTEXT1_PROTECTION_FAULT_STATUS ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int,int) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ atomic_xchg (int *,int) ;
 int dev_err (int ,char*,int,...) ;
 int drm_handle_vblank (int ,int) ;
 int le32_to_cpu (int ) ;
 int radeon_crtc_handle_flip (struct radeon_device*,int) ;
 int radeon_fence_process (struct radeon_device*,int ) ;
 int rmb () ;
 int schedule_work (int *) ;
 int si_get_ih_wptr (struct radeon_device*) ;
 int si_irq_ack (struct radeon_device*) ;
 int wake_up (int *) ;

int si_irq_process(struct radeon_device *rdev)
{
 u32 wptr;
 u32 rptr;
 u32 src_id, src_data, ring_id;
 u32 ring_index;
 bool queue_hotplug = 0;

 if (!rdev->ih.enabled || rdev->shutdown)
  return IRQ_NONE;

 wptr = si_get_ih_wptr(rdev);

restart_ih:

 if (atomic_xchg(&rdev->ih.lock, 1))
  return IRQ_NONE;

 rptr = rdev->ih.rptr;
 DRM_DEBUG("si_irq_process start: rptr %d, wptr %d\n", rptr, wptr);


 rmb();


 si_irq_ack(rdev);

 while (rptr != wptr) {

  ring_index = rptr / 4;
  src_id = le32_to_cpu(rdev->ih.ring[ring_index]) & 0xff;
  src_data = le32_to_cpu(rdev->ih.ring[ring_index + 1]) & 0xfffffff;
  ring_id = le32_to_cpu(rdev->ih.ring[ring_index + 2]) & 0xff;

  switch (src_id) {
  case 1:
   switch (src_data) {
   case 0:
    if (rdev->irq.stat_regs.evergreen.disp_int & LB_D1_VBLANK_INTERRUPT) {
     if (rdev->irq.crtc_vblank_int[0]) {
      drm_handle_vblank(rdev->ddev, 0);
      rdev->pm.vblank_sync = 1;
      wake_up(&rdev->irq.vblank_queue);
     }
     if (atomic_read(&rdev->irq.pflip[0]))
      radeon_crtc_handle_flip(rdev, 0);
     rdev->irq.stat_regs.evergreen.disp_int &= ~LB_D1_VBLANK_INTERRUPT;
     DRM_DEBUG("IH: D1 vblank\n");
    }
    break;
   case 1:
    if (rdev->irq.stat_regs.evergreen.disp_int & LB_D1_VLINE_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int &= ~LB_D1_VLINE_INTERRUPT;
     DRM_DEBUG("IH: D1 vline\n");
    }
    break;
   default:
    DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
    break;
   }
   break;
  case 2:
   switch (src_data) {
   case 0:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont & LB_D2_VBLANK_INTERRUPT) {
     if (rdev->irq.crtc_vblank_int[1]) {
      drm_handle_vblank(rdev->ddev, 1);
      rdev->pm.vblank_sync = 1;
      wake_up(&rdev->irq.vblank_queue);
     }
     if (atomic_read(&rdev->irq.pflip[1]))
      radeon_crtc_handle_flip(rdev, 1);
     rdev->irq.stat_regs.evergreen.disp_int_cont &= ~LB_D2_VBLANK_INTERRUPT;
     DRM_DEBUG("IH: D2 vblank\n");
    }
    break;
   case 1:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont & LB_D2_VLINE_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int_cont &= ~LB_D2_VLINE_INTERRUPT;
     DRM_DEBUG("IH: D2 vline\n");
    }
    break;
   default:
    DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
    break;
   }
   break;
  case 3:
   switch (src_data) {
   case 0:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont2 & LB_D3_VBLANK_INTERRUPT) {
     if (rdev->irq.crtc_vblank_int[2]) {
      drm_handle_vblank(rdev->ddev, 2);
      rdev->pm.vblank_sync = 1;
      wake_up(&rdev->irq.vblank_queue);
     }
     if (atomic_read(&rdev->irq.pflip[2]))
      radeon_crtc_handle_flip(rdev, 2);
     rdev->irq.stat_regs.evergreen.disp_int_cont2 &= ~LB_D3_VBLANK_INTERRUPT;
     DRM_DEBUG("IH: D3 vblank\n");
    }
    break;
   case 1:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont2 & LB_D3_VLINE_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int_cont2 &= ~LB_D3_VLINE_INTERRUPT;
     DRM_DEBUG("IH: D3 vline\n");
    }
    break;
   default:
    DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
    break;
   }
   break;
  case 4:
   switch (src_data) {
   case 0:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont3 & LB_D4_VBLANK_INTERRUPT) {
     if (rdev->irq.crtc_vblank_int[3]) {
      drm_handle_vblank(rdev->ddev, 3);
      rdev->pm.vblank_sync = 1;
      wake_up(&rdev->irq.vblank_queue);
     }
     if (atomic_read(&rdev->irq.pflip[3]))
      radeon_crtc_handle_flip(rdev, 3);
     rdev->irq.stat_regs.evergreen.disp_int_cont3 &= ~LB_D4_VBLANK_INTERRUPT;
     DRM_DEBUG("IH: D4 vblank\n");
    }
    break;
   case 1:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont3 & LB_D4_VLINE_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int_cont3 &= ~LB_D4_VLINE_INTERRUPT;
     DRM_DEBUG("IH: D4 vline\n");
    }
    break;
   default:
    DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
    break;
   }
   break;
  case 5:
   switch (src_data) {
   case 0:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont4 & LB_D5_VBLANK_INTERRUPT) {
     if (rdev->irq.crtc_vblank_int[4]) {
      drm_handle_vblank(rdev->ddev, 4);
      rdev->pm.vblank_sync = 1;
      wake_up(&rdev->irq.vblank_queue);
     }
     if (atomic_read(&rdev->irq.pflip[4]))
      radeon_crtc_handle_flip(rdev, 4);
     rdev->irq.stat_regs.evergreen.disp_int_cont4 &= ~LB_D5_VBLANK_INTERRUPT;
     DRM_DEBUG("IH: D5 vblank\n");
    }
    break;
   case 1:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont4 & LB_D5_VLINE_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int_cont4 &= ~LB_D5_VLINE_INTERRUPT;
     DRM_DEBUG("IH: D5 vline\n");
    }
    break;
   default:
    DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
    break;
   }
   break;
  case 6:
   switch (src_data) {
   case 0:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont5 & LB_D6_VBLANK_INTERRUPT) {
     if (rdev->irq.crtc_vblank_int[5]) {
      drm_handle_vblank(rdev->ddev, 5);
      rdev->pm.vblank_sync = 1;
      wake_up(&rdev->irq.vblank_queue);
     }
     if (atomic_read(&rdev->irq.pflip[5]))
      radeon_crtc_handle_flip(rdev, 5);
     rdev->irq.stat_regs.evergreen.disp_int_cont5 &= ~LB_D6_VBLANK_INTERRUPT;
     DRM_DEBUG("IH: D6 vblank\n");
    }
    break;
   case 1:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont5 & LB_D6_VLINE_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int_cont5 &= ~LB_D6_VLINE_INTERRUPT;
     DRM_DEBUG("IH: D6 vline\n");
    }
    break;
   default:
    DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
    break;
   }
   break;
  case 42:
   switch (src_data) {
   case 0:
    if (rdev->irq.stat_regs.evergreen.disp_int & DC_HPD1_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int &= ~DC_HPD1_INTERRUPT;
     queue_hotplug = 1;
     DRM_DEBUG("IH: HPD1\n");
    }
    break;
   case 1:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont & DC_HPD2_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int_cont &= ~DC_HPD2_INTERRUPT;
     queue_hotplug = 1;
     DRM_DEBUG("IH: HPD2\n");
    }
    break;
   case 2:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont2 & DC_HPD3_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int_cont2 &= ~DC_HPD3_INTERRUPT;
     queue_hotplug = 1;
     DRM_DEBUG("IH: HPD3\n");
    }
    break;
   case 3:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont3 & DC_HPD4_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int_cont3 &= ~DC_HPD4_INTERRUPT;
     queue_hotplug = 1;
     DRM_DEBUG("IH: HPD4\n");
    }
    break;
   case 4:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont4 & DC_HPD5_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int_cont4 &= ~DC_HPD5_INTERRUPT;
     queue_hotplug = 1;
     DRM_DEBUG("IH: HPD5\n");
    }
    break;
   case 5:
    if (rdev->irq.stat_regs.evergreen.disp_int_cont5 & DC_HPD6_INTERRUPT) {
     rdev->irq.stat_regs.evergreen.disp_int_cont5 &= ~DC_HPD6_INTERRUPT;
     queue_hotplug = 1;
     DRM_DEBUG("IH: HPD6\n");
    }
    break;
   default:
    DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
    break;
   }
   break;
  case 146:
  case 147:
   dev_err(rdev->dev, "GPU fault detected: %d 0x%08x\n", src_id, src_data);
   dev_err(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
    RREG32(VM_CONTEXT1_PROTECTION_FAULT_ADDR));
   dev_err(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
    RREG32(VM_CONTEXT1_PROTECTION_FAULT_STATUS));

   WREG32_P(VM_CONTEXT1_CNTL2, 1, ~1);
   break;
  case 176:
   radeon_fence_process(rdev, RADEON_RING_TYPE_GFX_INDEX);
   break;
  case 177:
   radeon_fence_process(rdev, CAYMAN_RING_TYPE_CP1_INDEX);
   break;
  case 178:
   radeon_fence_process(rdev, CAYMAN_RING_TYPE_CP2_INDEX);
   break;
  case 181:
   DRM_DEBUG("IH: CP EOP\n");
   switch (ring_id) {
   case 0:
    radeon_fence_process(rdev, RADEON_RING_TYPE_GFX_INDEX);
    break;
   case 1:
    radeon_fence_process(rdev, CAYMAN_RING_TYPE_CP1_INDEX);
    break;
   case 2:
    radeon_fence_process(rdev, CAYMAN_RING_TYPE_CP2_INDEX);
    break;
   }
   break;
  case 224:
   DRM_DEBUG("IH: DMA trap\n");
   radeon_fence_process(rdev, R600_RING_TYPE_DMA_INDEX);
   break;
  case 233:
   DRM_DEBUG("IH: GUI idle\n");
   break;
  case 244:
   DRM_DEBUG("IH: DMA1 trap\n");
   radeon_fence_process(rdev, CAYMAN_RING_TYPE_DMA1_INDEX);
   break;
  default:
   DRM_DEBUG("Unhandled interrupt: %d %d\n", src_id, src_data);
   break;
  }


  rptr += 16;
  rptr &= rdev->ih.ptr_mask;
 }
 if (queue_hotplug)
  schedule_work(&rdev->hotplug_work);
 rdev->ih.rptr = rptr;
 WREG32(IH_RB_RPTR, rdev->ih.rptr);
 atomic_set(&rdev->ih.lock, 0);


 wptr = si_get_ih_wptr(rdev);
 if (wptr != rptr)
  goto restart_ih;

 return IRQ_HANDLED;
}
