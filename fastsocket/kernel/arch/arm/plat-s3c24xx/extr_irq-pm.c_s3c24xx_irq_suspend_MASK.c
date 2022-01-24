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
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 unsigned int FUNC0 (void**) ; 
 scalar_t__ S3C24XX_EINFLT0 ; 
 scalar_t__ S3C24XX_EINTMASK ; 
 scalar_t__ S3C24XX_EXTINT0 ; 
 void* FUNC1 (scalar_t__) ; 
 void** irq_save ; 
 int /*<<< orphan*/  FUNC2 (void**,unsigned int) ; 
 void** save_eintflt ; 
 void* save_eintmask ; 
 void** save_extint ; 

int FUNC3(struct sys_device *dev, pm_message_t state)
{
	unsigned int i;

	for (i = 0; i < FUNC0(save_extint); i++)
		save_extint[i] = FUNC1(S3C24XX_EXTINT0 + (i*4));

	for (i = 0; i < FUNC0(save_eintflt); i++)
		save_eintflt[i] = FUNC1(S3C24XX_EINFLT0 + (i*4));

	FUNC2(irq_save, FUNC0(irq_save));
	save_eintmask = FUNC1(S3C24XX_EINTMASK);

	return 0;
}