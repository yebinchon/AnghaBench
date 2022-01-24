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
struct pd_unit {scalar_t__ heads; int /*<<< orphan*/  sectors; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  IDE_INIT_DEV_PARMS ; 
 int /*<<< orphan*/  FUNC1 (struct pd_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pd_unit*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct pd_unit *disk)
{
	FUNC2(disk, 0, FUNC0("before init_dev_parms"));
	FUNC1(disk, disk->sectors, 0, disk->heads - 1, 0, 0,
			IDE_INIT_DEV_PARMS);
	FUNC3(300);
	FUNC2(disk, 0, "Initialise device parameters");
}