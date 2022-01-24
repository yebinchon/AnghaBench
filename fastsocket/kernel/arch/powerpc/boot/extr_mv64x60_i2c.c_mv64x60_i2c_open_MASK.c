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
typedef  int /*<<< orphan*/  v ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/ * ctlr_base ; 
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (void*,char*,scalar_t__*,int) ; 

int FUNC2(void)
{
	u32 v;
	void *devp;

	devp = FUNC0(NULL, "marvell,mv64360-i2c");
	if (devp == NULL)
		goto err_out;
	if (FUNC1(devp, "virtual-reg", &v, sizeof(v)) != sizeof(v))
		goto err_out;

	ctlr_base = (u8 *)v;
	return 0;

err_out:
	return -1;
}