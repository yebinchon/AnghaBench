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
struct cafe_camera {int /*<<< orphan*/  dev_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  C0_ENABLE ; 
 int /*<<< orphan*/  C1_PWRDWN ; 
 int /*<<< orphan*/  CLK_DIV_MASK ; 
 int GCSR_CCIC_EN ; 
 int GCSR_MRC ; 
 int GCSR_MRS ; 
 int GCSR_SRC ; 
 int GCSR_SRS ; 
 int /*<<< orphan*/  GIMSK_CCIC_EN ; 
 int /*<<< orphan*/  REG_CLKCTRL ; 
 int /*<<< orphan*/  REG_CTRL0 ; 
 int /*<<< orphan*/  REG_CTRL1 ; 
 int REG_GL_CSR ; 
 int /*<<< orphan*/  REG_GL_IMASK ; 
 int REG_IRQMASK ; 
 int /*<<< orphan*/  FUNC0 (struct cafe_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cafe_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_camera*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cafe_camera*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct cafe_camera *cam)
{
	unsigned long flags;

	FUNC5(&cam->dev_lock, flags);
	/*
	 * Added magic to bring up the hardware on the B-Test board
	 */
	FUNC2(cam, 0x3038, 0x8);
	FUNC2(cam, 0x315c, 0x80008);
	/*
	 * Go through the dance needed to wake the device up.
	 * Note that these registers are global and shared
	 * with the NAND and SD devices.  Interaction between the
	 * three still needs to be examined.
	 */
	FUNC2(cam, REG_GL_CSR, GCSR_SRS|GCSR_MRS); /* Needed? */
	FUNC2(cam, REG_GL_CSR, GCSR_SRC|GCSR_MRC);
	FUNC2(cam, REG_GL_CSR, GCSR_SRC|GCSR_MRS);
	/*
	 * Here we must wait a bit for the controller to come around.
	 */
	FUNC6(&cam->dev_lock, flags);
	FUNC4(5);
	FUNC5(&cam->dev_lock, flags);

	FUNC2(cam, REG_GL_CSR, GCSR_CCIC_EN|GCSR_SRC|GCSR_MRC);
	FUNC1(cam, REG_GL_IMASK, GIMSK_CCIC_EN);
	/*
	 * Make sure it's not powered down.
	 */
	FUNC0(cam, REG_CTRL1, C1_PWRDWN);
	/*
	 * Turn off the enable bit.  It sure should be off anyway,
	 * but it's good to be sure.
	 */
	FUNC0(cam, REG_CTRL0, C0_ENABLE);
	/*
	 * Mask all interrupts.
	 */
	FUNC2(cam, REG_IRQMASK, 0);
	/*
	 * Clock the sensor appropriately.  Controller clock should
	 * be 48MHz, sensor "typical" value is half that.
	 */
	FUNC3(cam, REG_CLKCTRL, 2, CLK_DIV_MASK);
	FUNC6(&cam->dev_lock, flags);
}