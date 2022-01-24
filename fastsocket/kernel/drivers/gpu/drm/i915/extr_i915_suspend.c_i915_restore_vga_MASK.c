#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int saveMSR; int saveAR_INDEX; int saveDACMASK; int /*<<< orphan*/ * saveAR; int /*<<< orphan*/ * saveGR; int /*<<< orphan*/ * saveCR; int /*<<< orphan*/ * saveSR; int /*<<< orphan*/  saveVGA_PD; int /*<<< orphan*/  saveVGA1; int /*<<< orphan*/  saveVGA0; int /*<<< orphan*/  saveVGACNTRL; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGA0 ; 
 int /*<<< orphan*/  VGA1 ; 
 int /*<<< orphan*/  VGA_AR_INDEX ; 
 int /*<<< orphan*/  VGA_CR_DATA_CGA ; 
 int /*<<< orphan*/  VGA_CR_DATA_MDA ; 
 int /*<<< orphan*/  VGA_CR_INDEX_CGA ; 
 int /*<<< orphan*/  VGA_CR_INDEX_MDA ; 
 int /*<<< orphan*/  VGA_DACMASK ; 
 int /*<<< orphan*/  VGA_GR_DATA ; 
 int /*<<< orphan*/  VGA_GR_INDEX ; 
 int VGA_MSR_CGA_MODE ; 
 int /*<<< orphan*/  VGA_MSR_WRITE ; 
 int /*<<< orphan*/  VGA_PD ; 
 int /*<<< orphan*/  VGA_SR_DATA ; 
 int /*<<< orphan*/  VGA_SR_INDEX ; 
 int /*<<< orphan*/  VGA_ST01_CGA ; 
 int /*<<< orphan*/  VGA_ST01_MDA ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int i;
	u16 cr_index, cr_data, st01;

	/* VGA state */
	FUNC1(FUNC4(dev), dev_priv->regfile.saveVGACNTRL);

	FUNC1(VGA0, dev_priv->regfile.saveVGA0);
	FUNC1(VGA1, dev_priv->regfile.saveVGA1);
	FUNC1(VGA_PD, dev_priv->regfile.saveVGA_PD);
	FUNC3(VGA_PD);
	FUNC7(150);

	/* MSR bits */
	FUNC2(VGA_MSR_WRITE, dev_priv->regfile.saveMSR);
	if (dev_priv->regfile.saveMSR & VGA_MSR_CGA_MODE) {
		cr_index = VGA_CR_INDEX_CGA;
		cr_data = VGA_CR_DATA_CGA;
		st01 = VGA_ST01_CGA;
	} else {
		cr_index = VGA_CR_INDEX_MDA;
		cr_data = VGA_CR_DATA_MDA;
		st01 = VGA_ST01_MDA;
	}

	/* Sequencer registers, don't write SR07 */
	for (i = 0; i < 7; i++)
		FUNC6(dev, VGA_SR_INDEX, VGA_SR_DATA, i,
				   dev_priv->regfile.saveSR[i]);

	/* CRT controller regs */
	/* Enable CR group 0 writes */
	FUNC6(dev, cr_index, cr_data, 0x11, dev_priv->regfile.saveCR[0x11]);
	for (i = 0; i <= 0x24; i++)
		FUNC6(dev, cr_index, cr_data, i, dev_priv->regfile.saveCR[i]);

	/* Graphics controller regs */
	for (i = 0; i < 9; i++)
		FUNC6(dev, VGA_GR_INDEX, VGA_GR_DATA, i,
				   dev_priv->regfile.saveGR[i]);

	FUNC6(dev, VGA_GR_INDEX, VGA_GR_DATA, 0x10,
			   dev_priv->regfile.saveGR[0x10]);
	FUNC6(dev, VGA_GR_INDEX, VGA_GR_DATA, 0x11,
			   dev_priv->regfile.saveGR[0x11]);
	FUNC6(dev, VGA_GR_INDEX, VGA_GR_DATA, 0x18,
			   dev_priv->regfile.saveGR[0x18]);

	/* Attribute controller registers */
	FUNC0(st01); /* switch back to index mode */
	for (i = 0; i <= 0x14; i++)
		FUNC5(dev, st01, i, dev_priv->regfile.saveAR[i], 0);
	FUNC0(st01); /* switch back to index mode */
	FUNC2(VGA_AR_INDEX, dev_priv->regfile.saveAR_INDEX | 0x20);
	FUNC0(st01);

	/* VGA color palette registers */
	FUNC2(VGA_DACMASK, dev_priv->regfile.saveDACMASK);
}