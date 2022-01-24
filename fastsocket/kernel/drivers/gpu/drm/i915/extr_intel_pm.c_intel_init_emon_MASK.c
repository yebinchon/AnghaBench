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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int corr; } ;
struct drm_i915_private {TYPE_1__ ips; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ CSIEW0 ; 
 scalar_t__ CSIEW1 ; 
 scalar_t__ CSIEW2 ; 
 scalar_t__ DEW ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 scalar_t__ ECR ; 
 scalar_t__ EG0 ; 
 scalar_t__ EG1 ; 
 scalar_t__ EG2 ; 
 scalar_t__ EG3 ; 
 scalar_t__ EG4 ; 
 scalar_t__ EG5 ; 
 scalar_t__ EG6 ; 
 scalar_t__ EG7 ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ LCFUSE02 ; 
 int LCFUSE_HIV_MASK ; 
 scalar_t__ OGW0 ; 
 scalar_t__ OGW1 ; 
 scalar_t__ PEW ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ PXVFREQ_BASE ; 
 int PXVFREQ_PX_MASK ; 
 int PXVFREQ_PX_SHIFT ; 
 scalar_t__ PXW ; 
 scalar_t__ PXWL ; 
 scalar_t__ SDEW ; 
 unsigned long FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 lcfuse;
	u8 pxw[16];
	int i;

	/* Disable to program */
	FUNC2(ECR, 0);
	FUNC3(ECR);

	/* Program energy weights for various events */
	FUNC2(SDEW, 0x15040d00);
	FUNC2(CSIEW0, 0x007f0000);
	FUNC2(CSIEW1, 0x1e220004);
	FUNC2(CSIEW2, 0x04000004);

	for (i = 0; i < 5; i++)
		FUNC2(PEW + (i * 4), 0);
	for (i = 0; i < 3; i++)
		FUNC2(DEW + (i * 4), 0);

	/* Program P-state weights to account for frequency power adjustment */
	for (i = 0; i < 16; i++) {
		u32 pxvidfreq = FUNC1(PXVFREQ_BASE + (i * 4));
		unsigned long freq = FUNC4(pxvidfreq);
		unsigned long vid = (pxvidfreq & PXVFREQ_PX_MASK) >>
			PXVFREQ_PX_SHIFT;
		unsigned long val;

		val = vid * vid;
		val *= (freq / 1000);
		val *= 255;
		val /= (127*127*900);
		if (val > 0xff)
			FUNC0("bad pxval: %ld\n", val);
		pxw[i] = val;
	}
	/* Render standby states get 0 weight */
	pxw[14] = 0;
	pxw[15] = 0;

	for (i = 0; i < 4; i++) {
		u32 val = (pxw[i*4] << 24) | (pxw[(i*4)+1] << 16) |
			(pxw[(i*4)+2] << 8) | (pxw[(i*4)+3]);
		FUNC2(PXW + (i * 4), val);
	}

	/* Adjust magic regs to magic values (more experimental results) */
	FUNC2(OGW0, 0);
	FUNC2(OGW1, 0);
	FUNC2(EG0, 0x00007f00);
	FUNC2(EG1, 0x0000000e);
	FUNC2(EG2, 0x000e0000);
	FUNC2(EG3, 0x68000300);
	FUNC2(EG4, 0x42000000);
	FUNC2(EG5, 0x00140031);
	FUNC2(EG6, 0);
	FUNC2(EG7, 0);

	for (i = 0; i < 8; i++)
		FUNC2(PXWL + (i * 4), 0);

	/* Enable PMON + select events */
	FUNC2(ECR, 0x80000019);

	lcfuse = FUNC1(LCFUSE02);

	dev_priv->ips.corr = (lcfuse & LCFUSE_HIV_MASK);
}