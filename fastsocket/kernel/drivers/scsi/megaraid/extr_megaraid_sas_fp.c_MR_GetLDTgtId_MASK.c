#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {TYPE_2__* ldSpanMap; } ;
struct MR_FW_RAID_MAP_ALL {TYPE_3__ raidMap; } ;
struct TYPE_4__ {int /*<<< orphan*/  targetId; } ;
struct TYPE_5__ {TYPE_1__ ldRaid; } ;

/* Variables and functions */

u16 FUNC0(u32 ld, struct MR_FW_RAID_MAP_ALL *map)
{
	return map->raidMap.ldSpanMap[ld].ldRaid.targetId;
}