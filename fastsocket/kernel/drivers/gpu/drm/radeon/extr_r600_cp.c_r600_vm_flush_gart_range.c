
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int gart_vm_start; int gart_size; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int DRM_UDELAY (int) ;
 int R600_VM_CONTEXT0_INVALIDATION_HIGH_ADDR ;
 int R600_VM_CONTEXT0_INVALIDATION_LOW_ADDR ;
 int R600_VM_CONTEXT0_REQUEST_RESPONSE ;
 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int) ;

__attribute__((used)) static void r600_vm_flush_gart_range(struct drm_device *dev)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 u32 resp, countdown = 1000;
 RADEON_WRITE(R600_VM_CONTEXT0_INVALIDATION_LOW_ADDR, dev_priv->gart_vm_start >> 12);
 RADEON_WRITE(R600_VM_CONTEXT0_INVALIDATION_HIGH_ADDR, (dev_priv->gart_vm_start + dev_priv->gart_size - 1) >> 12);
 RADEON_WRITE(R600_VM_CONTEXT0_REQUEST_RESPONSE, 2);

 do {
  resp = RADEON_READ(R600_VM_CONTEXT0_REQUEST_RESPONSE);
  countdown--;
  DRM_UDELAY(1);
 } while (((resp & 0xf0) == 0) && countdown);
}
