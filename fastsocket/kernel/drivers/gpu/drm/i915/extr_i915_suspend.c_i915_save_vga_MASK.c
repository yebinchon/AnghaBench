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
struct TYPE_2__ {int saveMSR; int* saveCR; int* saveGR; int* saveSR; void* saveAR_INDEX; int /*<<< orphan*/ * saveAR; void* saveDACMASK; void* saveVGACNTRL; void* saveVGA_PD; void* saveVGA1; void* saveVGA0; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
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
 int /*<<< orphan*/  VGA_MSR_READ ; 
 int /*<<< orphan*/  VGA_PD ; 
 int /*<<< orphan*/  VGA_SR_DATA ; 
 int /*<<< orphan*/  VGA_SR_INDEX ; 
 int /*<<< orphan*/  VGA_ST01_CGA ; 
 int /*<<< orphan*/  VGA_ST01_MDA ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int i;
	u16 cr_index, cr_data, st01;

	/* VGA state */
	dev_priv->regfile.saveVGA0 = FUNC0(VGA0);
	dev_priv->regfile.saveVGA1 = FUNC0(VGA1);
	dev_priv->regfile.saveVGA_PD = FUNC0(VGA_PD);
	dev_priv->regfile.saveVGACNTRL = FUNC0(FUNC5(dev));

	/* VGA color palette registers */
	dev_priv->regfile.saveDACMASK = FUNC1(VGA_DACMASK);

	/* MSR bits */
	dev_priv->regfile.saveMSR = FUNC1(VGA_MSR_READ);
	if (dev_priv->regfile.saveMSR & VGA_MSR_CGA_MODE) {
		cr_index = VGA_CR_INDEX_CGA;
		cr_data = VGA_CR_DATA_CGA;
		st01 = VGA_ST01_CGA;
	} else {
		cr_index = VGA_CR_INDEX_MDA;
		cr_data = VGA_CR_DATA_MDA;
		st01 = VGA_ST01_MDA;
	}

	/* CRT controller regs */
	FUNC6(dev, cr_index, cr_data, 0x11,
			   FUNC4(dev, cr_index, cr_data, 0x11) &
			   (~0x80));
	for (i = 0; i <= 0x24; i++)
		dev_priv->regfile.saveCR[i] =
			FUNC4(dev, cr_index, cr_data, i);
	/* Make sure we don't turn off CR group 0 writes */
	dev_priv->regfile.saveCR[0x11] &= ~0x80;

	/* Attribute controller registers */
	FUNC1(st01);
	dev_priv->regfile.saveAR_INDEX = FUNC1(VGA_AR_INDEX);
	for (i = 0; i <= 0x14; i++)
		dev_priv->regfile.saveAR[i] = FUNC3(dev, st01, i, 0);
	FUNC1(st01);
	FUNC2(VGA_AR_INDEX, dev_priv->regfile.saveAR_INDEX);
	FUNC1(st01);

	/* Graphics controller registers */
	for (i = 0; i < 9; i++)
		dev_priv->regfile.saveGR[i] =
			FUNC4(dev, VGA_GR_INDEX, VGA_GR_DATA, i);

	dev_priv->regfile.saveGR[0x10] =
		FUNC4(dev, VGA_GR_INDEX, VGA_GR_DATA, 0x10);
	dev_priv->regfile.saveGR[0x11] =
		FUNC4(dev, VGA_GR_INDEX, VGA_GR_DATA, 0x11);
	dev_priv->regfile.saveGR[0x18] =
		FUNC4(dev, VGA_GR_INDEX, VGA_GR_DATA, 0x18);

	/* Sequencer registers */
	for (i = 0; i < 8; i++)
		dev_priv->regfile.saveSR[i] =
			FUNC4(dev, VGA_SR_INDEX, VGA_SR_DATA, i);
}