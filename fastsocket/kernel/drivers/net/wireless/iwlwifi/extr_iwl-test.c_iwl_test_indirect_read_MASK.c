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
typedef  int u32 ;
struct iwl_trans {int dummy; } ;
struct TYPE_2__ {int size; int in_read; int /*<<< orphan*/  nchunks; int /*<<< orphan*/ * addr; } ;
struct iwl_test {TYPE_1__ mem; struct iwl_trans* trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DUMP_CHUNK_SIZE ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HBUS_TARG_PRPH_RADDR ; 
 int /*<<< orphan*/  HBUS_TARG_PRPH_RDAT ; 
 int IWL_ABS_PRPH_START ; 
 int PRPH_END ; 
 int FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iwl_test *tst, u32 addr, u32 size)
{
	struct iwl_trans *trans = tst->trans;
	unsigned long flags;
	int i;

	if (size & 0x3)
		return -EINVAL;

	tst->mem.size = size;
	tst->mem.addr = FUNC6(tst->mem.size, GFP_KERNEL);
	if (tst->mem.addr == NULL)
		return -ENOMEM;

	/* Hard-coded periphery absolute address */
	if (IWL_ABS_PRPH_START <= addr &&
	    addr < IWL_ABS_PRPH_START + PRPH_END) {
			if (!FUNC2(trans, false, &flags)) {
				return -EIO;
			}
			FUNC5(trans, HBUS_TARG_PRPH_RADDR,
				    addr | (3 << 24));
			for (i = 0; i < size; i += 4)
				*(u32 *)(tst->mem.addr + i) =
					FUNC1(trans, HBUS_TARG_PRPH_RDAT);
			FUNC4(trans, &flags);
	} else { /* target memory (SRAM) */
		FUNC3(trans, addr, tst->mem.addr,
				   tst->mem.size / 4);
	}

	tst->mem.nchunks =
		FUNC0(tst->mem.size, DUMP_CHUNK_SIZE);
	tst->mem.in_read = true;
	return 0;

}