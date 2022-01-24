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
typedef  scalar_t__ u32 ;
struct ib_smp {int /*<<< orphan*/  status; scalar_t__ data; int /*<<< orphan*/  attr_mod; } ;
struct ib_device {int dummy; } ;
typedef  scalar_t__ __be64 ;
struct TYPE_4__ {TYPE_1__* dd; } ;
struct TYPE_3__ {scalar_t__ ipath_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ib_smp*) ; 
 TYPE_2__* FUNC3 (struct ib_device*) ; 

__attribute__((used)) static int FUNC4(struct ib_smp *smp,
				  struct ib_device *ibdev)
{
	u32 startgx = 8 * FUNC0(smp->attr_mod);
	__be64 *p = (__be64 *) smp->data;

	/* 32 blocks of 8 64-bit GUIDs per block */

	FUNC1(smp->data, 0, sizeof(smp->data));

	/*
	 * We only support one GUID for now.  If this changes, the
	 * portinfo.guid_cap field needs to be updated too.
	 */
	if (startgx == 0) {
		__be64 g = FUNC3(ibdev)->dd->ipath_guid;
		if (g == 0)
			/* GUID 0 is illegal */
			smp->status |= IB_SMP_INVALID_FIELD;
		else
			/* The first is a copy of the read-only HW GUID. */
			*p = g;
	} else
		smp->status |= IB_SMP_INVALID_FIELD;

	return FUNC2(smp);
}