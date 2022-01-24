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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct megasas_instance {TYPE_1__* pdev; } ;
struct RAID_CONTEXT {int spanArm; int /*<<< orphan*/  regLockFlags; } ;
struct MR_LD_RAID {scalar_t__ rowDataSize; int level; scalar_t__ rowSize; scalar_t__ modFactor; int spanDepth; int stripeShift; scalar_t__ regTypeReqOnRead; } ;
struct MR_FW_RAID_MAP_ALL {int dummy; } ;
struct IO_REQUEST_INFO {int pdBlock; int devHandle; } ;
struct TYPE_4__ {int startBlk; } ;
struct TYPE_3__ {scalar_t__ device; } ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (int,int,struct MR_FW_RAID_MAP_ALL*) ; 
 scalar_t__ FUNC1 (int,int,int*,struct MR_FW_RAID_MAP_ALL*) ; 
 int FUNC2 (int,int,struct MR_FW_RAID_MAP_ALL*) ; 
 struct MR_LD_RAID* FUNC3 (int,struct MR_FW_RAID_MAP_ALL*) ; 
 int FUNC4 (int,int,struct MR_FW_RAID_MAP_ALL*) ; 
 TYPE_2__* FUNC5 (int,int,struct MR_FW_RAID_MAP_ALL*) ; 
 int MR_PD_INVALID ; 
 int FUNC6 (int,struct MR_FW_RAID_MAP_ALL*) ; 
 scalar_t__ PCI_DEVICE_ID_LSI_FURY ; 
 scalar_t__ PCI_DEVICE_ID_LSI_INVADER ; 
 int RAID_CTX_SPANARM_SPAN_SHIFT ; 
 int /*<<< orphan*/  REGION_TYPE_EXCLUSIVE ; 
 scalar_t__ REGION_TYPE_UNUSED ; 
 int SPAN_INVALID ; 
 int TRUE ; 
 int FUNC7 (int,scalar_t__) ; 
 int FUNC8 (int,scalar_t__) ; 

u8 FUNC9(struct megasas_instance *instance, u32 ld, u64 stripRow,
		u16 stripRef, struct IO_REQUEST_INFO *io_info,
		struct RAID_CONTEXT *pRAID_Context,
		struct MR_FW_RAID_MAP_ALL *map)
{
	struct MR_LD_RAID  *raid = FUNC3(ld, map);
	u32         pd, arRef;
	u8          physArm, span;
	u64         row;
	u8	    retval = TRUE;
	u8          do_invader = 0;
	u64	    *pdBlock = &io_info->pdBlock;
	u16	    *pDevHandle = &io_info->devHandle;

	if ((instance->pdev->device == PCI_DEVICE_ID_LSI_INVADER ||
		instance->pdev->device == PCI_DEVICE_ID_LSI_FURY))
		do_invader = 1;

	row =  FUNC7(stripRow, raid->rowDataSize);

	if (raid->level == 6) {
		/* logical arm within row */
		u32 logArm =  FUNC8(stripRow, raid->rowDataSize);
		u32 rowMod, armQ, arm;

		if (raid->rowSize == 0)
			return FALSE;
		/* get logical row mod */
		rowMod = FUNC8(row, raid->rowSize);
		armQ = raid->rowSize-1-rowMod; /* index of Q drive */
		arm = armQ+1+logArm; /* data always logically follows Q */
		if (arm >= raid->rowSize) /* handle wrap condition */
			arm -= raid->rowSize;
		physArm = (u8)arm;
	} else  {
		if (raid->modFactor == 0)
			return FALSE;
		physArm = FUNC2(ld,  FUNC8(stripRow,
							  raid->modFactor),
					  map);
	}

	if (raid->spanDepth == 1) {
		span = 0;
		*pdBlock = row << raid->stripeShift;
	} else {
		span = (u8)FUNC1(ld, row, pdBlock, map);
		if (span == SPAN_INVALID)
			return FALSE;
	}

	/* Get the array on which this span is present */
	arRef       = FUNC4(ld, span, map);
	pd          = FUNC0(arRef, physArm, map); /* Get the pd */

	if (pd != MR_PD_INVALID)
		/* Get dev handle from Pd. */
		*pDevHandle = FUNC6(pd, map);
	else {
		*pDevHandle = MR_PD_INVALID; /* set dev handle as invalid. */
		if ((raid->level >= 5) &&
			(!do_invader  || (do_invader &&
			(raid->regTypeReqOnRead != REGION_TYPE_UNUSED))))
			pRAID_Context->regLockFlags = REGION_TYPE_EXCLUSIVE;
		else if (raid->level == 1) {
			/* Get alternate Pd. */
			pd = FUNC0(arRef, physArm + 1, map);
			if (pd != MR_PD_INVALID)
				/* Get dev handle from Pd */
				*pDevHandle = FUNC6(pd, map);
		}
	}

	*pdBlock += stripRef + FUNC5(ld, span, map)->startBlk;
	pRAID_Context->spanArm = (span << RAID_CTX_SPANARM_SPAN_SHIFT) |
		physArm;
	return retval;
}