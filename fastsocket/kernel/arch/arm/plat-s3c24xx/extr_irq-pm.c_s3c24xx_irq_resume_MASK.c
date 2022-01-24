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
struct sys_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ S3C24XX_EINFLT0 ; 
 scalar_t__ S3C24XX_EINTMASK ; 
 scalar_t__ S3C24XX_EXTINT0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * irq_save ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * save_eintflt ; 
 int /*<<< orphan*/  save_eintmask ; 
 int /*<<< orphan*/ * save_extint ; 

int FUNC3(struct sys_device *dev)
{
	unsigned int i;

	for (i = 0; i < FUNC0(save_extint); i++)
		FUNC1(save_extint[i], S3C24XX_EXTINT0 + (i*4));

	for (i = 0; i < FUNC0(save_eintflt); i++)
		FUNC1(save_eintflt[i], S3C24XX_EINFLT0 + (i*4));

	FUNC2(irq_save, FUNC0(irq_save));
	FUNC1(save_eintmask, S3C24XX_EINTMASK);

	return 0;
}