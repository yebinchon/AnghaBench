#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  unsigned long u32 ;
typedef  unsigned long u16 ;
struct megasas_instance {TYPE_1__* pdev; } ;
struct RAID_CONTEXT {int spanArm; int /*<<< orphan*/  regLockFlags; } ;
struct MR_LD_RAID {int level; scalar_t__ regTypeReqOnRead; } ;
struct MR_FW_RAID_MAP_ALL {int dummy; } ;
struct IO_REQUEST_INFO {unsigned long devHandle; int start_span; int /*<<< orphan*/  start_row; int /*<<< orphan*/  pdBlock; } ;
struct TYPE_4__ {unsigned long startBlk; } ;
struct TYPE_3__ {scalar_t__ device; } ;

/* Variables and functions */
 int FALSE ; 
 unsigned long FUNC0 (unsigned long,int,struct MR_FW_RAID_MAP_ALL*) ; 
 struct MR_LD_RAID* FUNC1 (unsigned long,struct MR_FW_RAID_MAP_ALL*) ; 
 unsigned long FUNC2 (unsigned long,int,struct MR_FW_RAID_MAP_ALL*) ; 
 TYPE_2__* FUNC3 (unsigned long,int,struct MR_FW_RAID_MAP_ALL*) ; 
 unsigned long MR_PD_INVALID ; 
 unsigned long FUNC4 (unsigned long,struct MR_FW_RAID_MAP_ALL*) ; 
 scalar_t__ PCI_DEVICE_ID_LSI_FURY ; 
 scalar_t__ PCI_DEVICE_ID_LSI_INVADER ; 
 int RAID_CTX_SPANARM_SPAN_SHIFT ; 
 int /*<<< orphan*/  REGION_TYPE_EXCLUSIVE ; 
 scalar_t__ REGION_TYPE_UNUSED ; 
 unsigned long FUNC5 (struct MR_FW_RAID_MAP_ALL*,unsigned long,int) ; 
 int TRUE ; 
 int FUNC6 (struct megasas_instance*,unsigned long,int,int /*<<< orphan*/ ,struct MR_FW_RAID_MAP_ALL*) ; 
 unsigned long FUNC7 (struct megasas_instance*,unsigned long,int /*<<< orphan*/ ,struct MR_FW_RAID_MAP_ALL*) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static u8 FUNC9(struct megasas_instance *instance, u32 ld,
		u64 stripRow, u16 stripRef, struct IO_REQUEST_INFO *io_info,
		struct RAID_CONTEXT *pRAID_Context,
		struct MR_FW_RAID_MAP_ALL *map)
{
	struct MR_LD_RAID  *raid = FUNC1(ld, map);
	u32     pd, arRef;
	u8      physArm, span;
	u64     row;
	u8	retval = TRUE;
	u8	do_invader = 0;
	u64	*pdBlock = &io_info->pdBlock;
	u16	*pDevHandle = &io_info->devHandle;
	u32	logArm, rowMod, armQ, arm;

	if ((instance->pdev->device == PCI_DEVICE_ID_LSI_INVADER ||
		instance->pdev->device == PCI_DEVICE_ID_LSI_FURY))
		do_invader = 1;

	/*Get row and span from io_info for Uneven Span IO.*/
	row	    = io_info->start_row;
	span	    = io_info->start_span;


	if (raid->level == 6) {
		logArm = FUNC7(instance, ld, stripRow, map);
		if (logArm == -1UL)
			return FALSE;
		rowMod = FUNC8(row, FUNC5(map, ld, span));
		armQ = FUNC5(map, ld, span) - 1 - rowMod;
		arm = armQ + 1 + logArm;
		if (arm >= FUNC5(map, ld, span))
			arm -= FUNC5(map, ld, span);
		physArm = (u8)arm;
	} else
		/* Calculate the arm */
		physArm = FUNC6(instance, ld, span, stripRow, map);
	if (physArm == 0xFF)
		return FALSE;

	arRef       = FUNC2(ld, span, map);
	pd          = FUNC0(arRef, physArm, map);

	if (pd != MR_PD_INVALID)
		*pDevHandle = FUNC4(pd, map);
	else {
		*pDevHandle = MR_PD_INVALID;
		if ((raid->level >= 5) &&
			(!do_invader  || (do_invader &&
			(raid->regTypeReqOnRead != REGION_TYPE_UNUSED))))
			pRAID_Context->regLockFlags = REGION_TYPE_EXCLUSIVE;
		else if (raid->level == 1) {
			pd = FUNC0(arRef, physArm + 1, map);
			if (pd != MR_PD_INVALID)
				*pDevHandle = FUNC4(pd, map);
		}
	}

	*pdBlock += stripRef + FUNC3(ld, span, map)->startBlk;
	pRAID_Context->spanArm = (span << RAID_CTX_SPANARM_SPAN_SHIFT) |
					physArm;
	return retval;
}