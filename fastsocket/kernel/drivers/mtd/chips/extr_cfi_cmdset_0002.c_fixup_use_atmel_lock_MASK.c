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
struct mtd_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  unlock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTD_POWERUP_LOCK ; 
 int /*<<< orphan*/  cfi_atmel_lock ; 
 int /*<<< orphan*/  cfi_atmel_unlock ; 

__attribute__((used)) static void FUNC0(struct mtd_info *mtd, void *param)
{
	mtd->lock = cfi_atmel_lock;
	mtd->unlock = cfi_atmel_unlock;
	mtd->flags |= MTD_POWERUP_LOCK;
}