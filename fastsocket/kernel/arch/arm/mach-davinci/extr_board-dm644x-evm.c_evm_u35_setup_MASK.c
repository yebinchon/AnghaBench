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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int
FUNC3(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
{
	/* p0 = nDRV_VBUS (initial:  don't supply it) */
	FUNC1(gpio + 0, "nDRV_VBUS");
	FUNC0(gpio + 0, 1);

	/* p1 = VDDIMX_EN */
	FUNC1(gpio + 1, "VDDIMX_EN");
	FUNC0(gpio + 1, 1);

	/* p2 = VLYNQ_EN */
	FUNC1(gpio + 2, "VLYNQ_EN");
	FUNC0(gpio + 2, 1);

	/* p3 = n3V3_CF_RESET (initial: stay in reset) */
	FUNC1(gpio + 3, "nCF_RESET");
	FUNC0(gpio + 3, 0);

	/* (p4 unused) */

	/* p5 = 1V8_WLAN_RESET (initial: stay in reset) */
	FUNC1(gpio + 5, "WLAN_RESET");
	FUNC0(gpio + 5, 1);

	/* p6 = nATA_SEL (initial: select) */
	FUNC1(gpio + 6, "nATA_SEL");
	FUNC0(gpio + 6, 0);

	/* p7 = nCF_SEL (initial: deselect) */
	FUNC1(gpio + 7, "nCF_SEL");
	FUNC0(gpio + 7, 1);

	/* irlml6401 switches over 1A, in under 8 msec;
	 * now it can be managed by nDRV_VBUS ...
	 */
	FUNC2(500, 8);

	return 0;
}