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
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FL_SYNCING ; 
 int /*<<< orphan*/  MTD_DEBUG_LEVEL3 ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd)
{
	FUNC0(MTD_DEBUG_LEVEL3, "onenand_sync: called\n");

	/* Grab the lock and see if the device is available */
	FUNC1(mtd, FL_SYNCING);

	/* Release it and go back */
	FUNC2(mtd);
}