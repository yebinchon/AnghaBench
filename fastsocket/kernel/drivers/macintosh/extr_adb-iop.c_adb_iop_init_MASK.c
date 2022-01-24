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
 int /*<<< orphan*/  ADB_CHAN ; 
 int /*<<< orphan*/  ADB_IOP ; 
 int /*<<< orphan*/  adb_iop_listen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(void)
{
	FUNC1("adb: IOP ISM driver v0.4 for Unified ADB.\n");
	FUNC0(ADB_IOP, ADB_CHAN, adb_iop_listen, "ADB");
	return 0;
}