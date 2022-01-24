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

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PTT0 ; 
 int /*<<< orphan*/  GPIO_PTT2 ; 
 int /*<<< orphan*/  GPIO_PTT3 ; 
 int /*<<< orphan*/  camera_clk ; 
 int /*<<< orphan*/  camera_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(int is_tw)
{
	FUNC5(&camera_lock);

	/* Use 10 MHz VIO_CKO instead of 24 MHz to work
	 * around signal quality issues on Panel Board V2.1.
	 */
	camera_clk = FUNC1(NULL, "video_clk");
	FUNC2(camera_clk, 10000000);
	FUNC0(camera_clk);	/* start VIO_CKO */

	/* use VIO_RST to take camera out of reset */
	FUNC4(10);
	if (is_tw) {
		FUNC3(GPIO_PTT2, 0);
		FUNC3(GPIO_PTT0, 0);
	} else {
		FUNC3(GPIO_PTT0, 1);
	}
	FUNC3(GPIO_PTT3, 0);
	FUNC4(10);
	FUNC3(GPIO_PTT3, 1);
	FUNC4(10); /* wait to let chip come out of reset */
}