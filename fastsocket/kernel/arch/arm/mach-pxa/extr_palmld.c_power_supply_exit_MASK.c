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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_NR_PALMLD_POWER_DETECT ; 
 int /*<<< orphan*/  GPIO_NR_PALMLD_USB_DETECT_N ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct device *dev)
{
	FUNC0(GPIO_NR_PALMLD_USB_DETECT_N);
	FUNC0(GPIO_NR_PALMLD_POWER_DETECT);
}