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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HBUS_TARG_MEM_RADDR ; 
 int /*<<< orphan*/  HBUS_TARG_MEM_RDAT ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iwl_trans*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iwl_trans *trans, u32 addr,
				   void *buf, int dwords)
{
	unsigned long flags;
	int offs, ret = 0;
	u32 *vals = buf;

	if (FUNC1(trans, false, &flags)) {
		FUNC3(trans, HBUS_TARG_MEM_RADDR, addr);
		for (offs = 0; offs < dwords; offs++)
			vals[offs] = FUNC0(trans, HBUS_TARG_MEM_RDAT);
		FUNC2(trans, &flags);
	} else {
		ret = -EBUSY;
	}
	return ret;
}