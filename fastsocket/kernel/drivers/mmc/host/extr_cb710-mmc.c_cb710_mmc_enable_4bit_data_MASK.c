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
struct cb710_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB710_MMC_C1_4BIT_DATA_BUS ; 
 int /*<<< orphan*/  CB710_MMC_CONFIG1_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct cb710_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char*) ; 

__attribute__((used)) static void FUNC3(struct cb710_slot *slot, int enable)
{
	FUNC2(FUNC1(slot), "configuring %d-data-line%s mode\n",
		enable ? 4 : 1, enable ? "s" : "");
	if (enable)
		FUNC0(slot, CB710_MMC_CONFIG1_PORT,
			CB710_MMC_C1_4BIT_DATA_BUS, 0);
	else
		FUNC0(slot, CB710_MMC_CONFIG1_PORT,
			0, CB710_MMC_C1_4BIT_DATA_BUS);
}