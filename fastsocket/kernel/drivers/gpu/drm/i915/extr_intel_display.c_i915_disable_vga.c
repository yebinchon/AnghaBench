
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int pdev; struct drm_i915_private* dev_private; } ;


 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 int SR01 ;
 int VGA_DISP_DISABLE ;
 int VGA_RSRC_LEGACY_IO ;
 int VGA_SR_DATA ;
 int VGA_SR_INDEX ;
 int i915_vgacntrl_reg (struct drm_device*) ;
 int inb (int ) ;
 int outb (int,int ) ;
 int udelay (int) ;
 int vga_get_uninterruptible (int ,int ) ;
 int vga_put (int ,int ) ;

__attribute__((used)) static void i915_disable_vga(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u8 sr1;
 u32 vga_reg = i915_vgacntrl_reg(dev);

 vga_get_uninterruptible(dev->pdev, VGA_RSRC_LEGACY_IO);
 outb(SR01, VGA_SR_INDEX);
 sr1 = inb(VGA_SR_DATA);
 outb(sr1 | 1<<5, VGA_SR_DATA);
 vga_put(dev->pdev, VGA_RSRC_LEGACY_IO);
 udelay(300);

 I915_WRITE(vga_reg, VGA_DISP_DISABLE);
 POSTING_READ(vga_reg);
}
