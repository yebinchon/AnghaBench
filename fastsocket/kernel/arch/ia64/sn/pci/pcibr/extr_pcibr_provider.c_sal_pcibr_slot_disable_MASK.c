#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  bs_persist_busnum; int /*<<< orphan*/  bs_persist_segment; } ;
struct pcibus_info {TYPE_1__ pbi_buscommon; } ;
struct ia64_sal_retval {scalar_t__ v0; scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ia64_sal_retval,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SN_SAL_IOIF_SLOT_DISABLE ; 

int
FUNC1(struct pcibus_info *soft, int device, int action,
		       void *resp)
{
	struct ia64_sal_retval ret_stuff;
	u64 busnum;
	u64 segment;

	ret_stuff.status = 0;
	ret_stuff.v0 = 0;

	segment = soft->pbi_buscommon.bs_persist_segment;
	busnum = soft->pbi_buscommon.bs_persist_busnum;
	FUNC0(ret_stuff, (u64) SN_SAL_IOIF_SLOT_DISABLE,
			segment, busnum, (u64) device, (u64) action,
			(u64) resp, 0, 0);

	return (int)ret_stuff.v0;
}