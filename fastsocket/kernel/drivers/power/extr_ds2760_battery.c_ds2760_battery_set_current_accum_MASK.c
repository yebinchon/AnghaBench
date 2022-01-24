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
struct ds2760_device_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  w1_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS2760_CURRENT_ACCUM_MSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ds2760_device_info *di,
					     unsigned int acr_val)
{
	unsigned char acr[2];

	/* acr is in units of 0.25 mAh */
	acr_val *= 4L;
	acr_val /= 1000;

	acr[0] = acr_val >> 8;
	acr[1] = acr_val & 0xff;

	if (FUNC1(di->w1_dev, acr, DS2760_CURRENT_ACCUM_MSB, 2) < 2)
		FUNC0(di->dev, "ACR write failed\n");
}