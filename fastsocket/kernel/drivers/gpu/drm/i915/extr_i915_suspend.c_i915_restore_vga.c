
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int saveMSR; int saveAR_INDEX; int saveDACMASK; int * saveAR; int * saveGR; int * saveCR; int * saveSR; int saveVGA_PD; int saveVGA1; int saveVGA0; int saveVGACNTRL; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int I915_READ8 (int ) ;
 int I915_WRITE (int ,int ) ;
 int I915_WRITE8 (int ,int) ;
 int POSTING_READ (int ) ;
 int VGA0 ;
 int VGA1 ;
 int VGA_AR_INDEX ;
 int VGA_CR_DATA_CGA ;
 int VGA_CR_DATA_MDA ;
 int VGA_CR_INDEX_CGA ;
 int VGA_CR_INDEX_MDA ;
 int VGA_DACMASK ;
 int VGA_GR_DATA ;
 int VGA_GR_INDEX ;
 int VGA_MSR_CGA_MODE ;
 int VGA_MSR_WRITE ;
 int VGA_PD ;
 int VGA_SR_DATA ;
 int VGA_SR_INDEX ;
 int VGA_ST01_CGA ;
 int VGA_ST01_MDA ;
 int i915_vgacntrl_reg (struct drm_device*) ;
 int i915_write_ar (struct drm_device*,int ,int,int ,int ) ;
 int i915_write_indexed (struct drm_device*,int ,int ,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void i915_restore_vga(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int i;
 u16 cr_index, cr_data, st01;


 I915_WRITE(i915_vgacntrl_reg(dev), dev_priv->regfile.saveVGACNTRL);

 I915_WRITE(VGA0, dev_priv->regfile.saveVGA0);
 I915_WRITE(VGA1, dev_priv->regfile.saveVGA1);
 I915_WRITE(VGA_PD, dev_priv->regfile.saveVGA_PD);
 POSTING_READ(VGA_PD);
 udelay(150);


 I915_WRITE8(VGA_MSR_WRITE, dev_priv->regfile.saveMSR);
 if (dev_priv->regfile.saveMSR & VGA_MSR_CGA_MODE) {
  cr_index = VGA_CR_INDEX_CGA;
  cr_data = VGA_CR_DATA_CGA;
  st01 = VGA_ST01_CGA;
 } else {
  cr_index = VGA_CR_INDEX_MDA;
  cr_data = VGA_CR_DATA_MDA;
  st01 = VGA_ST01_MDA;
 }


 for (i = 0; i < 7; i++)
  i915_write_indexed(dev, VGA_SR_INDEX, VGA_SR_DATA, i,
       dev_priv->regfile.saveSR[i]);



 i915_write_indexed(dev, cr_index, cr_data, 0x11, dev_priv->regfile.saveCR[0x11]);
 for (i = 0; i <= 0x24; i++)
  i915_write_indexed(dev, cr_index, cr_data, i, dev_priv->regfile.saveCR[i]);


 for (i = 0; i < 9; i++)
  i915_write_indexed(dev, VGA_GR_INDEX, VGA_GR_DATA, i,
       dev_priv->regfile.saveGR[i]);

 i915_write_indexed(dev, VGA_GR_INDEX, VGA_GR_DATA, 0x10,
      dev_priv->regfile.saveGR[0x10]);
 i915_write_indexed(dev, VGA_GR_INDEX, VGA_GR_DATA, 0x11,
      dev_priv->regfile.saveGR[0x11]);
 i915_write_indexed(dev, VGA_GR_INDEX, VGA_GR_DATA, 0x18,
      dev_priv->regfile.saveGR[0x18]);


 I915_READ8(st01);
 for (i = 0; i <= 0x14; i++)
  i915_write_ar(dev, st01, i, dev_priv->regfile.saveAR[i], 0);
 I915_READ8(st01);
 I915_WRITE8(VGA_AR_INDEX, dev_priv->regfile.saveAR_INDEX | 0x20);
 I915_READ8(st01);


 I915_WRITE8(VGA_DACMASK, dev_priv->regfile.saveDACMASK);
}
