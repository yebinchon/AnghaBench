#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CM_FCLKEN ; 
 int /*<<< orphan*/  CM_FCLKEN1 ; 
 int /*<<< orphan*/  CORE_MOD ; 
 int /*<<< orphan*/  GFX_MOD ; 
 int /*<<< orphan*/  OMAP3430ES2_CM_FCLKEN3 ; 
 int /*<<< orphan*/  OMAP3430ES2_SGX_MOD ; 
 int /*<<< orphan*/  OMAP3430ES2_USBHOST_MOD ; 
 int /*<<< orphan*/  OMAP3430_CAM_MOD ; 
 int /*<<< orphan*/  OMAP3430_DSS_MOD ; 
 int OMAP3430_EN_UART1 ; 
 int OMAP3430_EN_UART2 ; 
 int OMAP3430_EN_UART3 ; 
 int /*<<< orphan*/  OMAP3430_PER_MOD ; 
 scalar_t__ OMAP3430_REV_ES1_0 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int FUNC2(void)
{
	u32 fck_core1 = 0, fck_core3 = 0, fck_sgx = 0, fck_dss = 0,
		fck_cam = 0, fck_per = 0, fck_usbhost = 0;

	fck_core1 = FUNC0(CORE_MOD,
				    CM_FCLKEN1);
	if (FUNC1() > OMAP3430_REV_ES1_0) {
		fck_core3 = FUNC0(CORE_MOD,
					    OMAP3430ES2_CM_FCLKEN3);
		fck_sgx = FUNC0(OMAP3430ES2_SGX_MOD,
					  CM_FCLKEN);
		fck_usbhost = FUNC0(OMAP3430ES2_USBHOST_MOD,
					      CM_FCLKEN);
	} else
		fck_sgx = FUNC0(GFX_MOD,
					  OMAP3430ES2_CM_FCLKEN3);
	fck_dss = FUNC0(OMAP3430_DSS_MOD,
				  CM_FCLKEN);
	fck_cam = FUNC0(OMAP3430_CAM_MOD,
				  CM_FCLKEN);
	fck_per = FUNC0(OMAP3430_PER_MOD,
				  CM_FCLKEN);

	/* Ignore UART clocks.  These are handled by UART core (serial.c) */
	fck_core1 &= ~(OMAP3430_EN_UART1 | OMAP3430_EN_UART2);
	fck_per &= ~OMAP3430_EN_UART3;

	if (fck_core1 | fck_core3 | fck_sgx | fck_dss |
	    fck_cam | fck_per | fck_usbhost)
		return 1;
	return 0;
}