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
typedef  int u64 ;
typedef  int u32 ;
struct bnx2 {int ctx_pages; int* ctx_blk_mapping; scalar_t__* ctx_blk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_CTX_COMMAND ; 
 int BNX2_CTX_COMMAND_ENABLED ; 
 int BNX2_CTX_COMMAND_MEM_INIT ; 
 int /*<<< orphan*/  BNX2_CTX_HOST_PAGE_TBL_CTRL ; 
 int BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ ; 
 int /*<<< orphan*/  BNX2_CTX_HOST_PAGE_TBL_DATA0 ; 
 int BNX2_CTX_HOST_PAGE_TBL_DATA0_VALID ; 
 int /*<<< orphan*/  BNX2_CTX_HOST_PAGE_TBL_DATA1 ; 
 int BNX2_PAGE_BITS ; 
 int /*<<< orphan*/  BNX2_PAGE_SIZE ; 
 int FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct bnx2 *bp)
{
	int i, ret = 0;
	u32 val;

	val = BNX2_CTX_COMMAND_ENABLED | BNX2_CTX_COMMAND_MEM_INIT | (1 << 12);
	val |= (BNX2_PAGE_BITS - 8) << 16;
	FUNC1(bp, BNX2_CTX_COMMAND, val);
	for (i = 0; i < 10; i++) {
		val = FUNC0(bp, BNX2_CTX_COMMAND);
		if (!(val & BNX2_CTX_COMMAND_MEM_INIT))
			break;
		FUNC3(2);
	}
	if (val & BNX2_CTX_COMMAND_MEM_INIT)
		return -EBUSY;

	for (i = 0; i < bp->ctx_pages; i++) {
		int j;

		if (bp->ctx_blk[i])
			FUNC2(bp->ctx_blk[i], 0, BNX2_PAGE_SIZE);
		else
			return -ENOMEM;

		FUNC1(bp, BNX2_CTX_HOST_PAGE_TBL_DATA0,
			(bp->ctx_blk_mapping[i] & 0xffffffff) |
			BNX2_CTX_HOST_PAGE_TBL_DATA0_VALID);
		FUNC1(bp, BNX2_CTX_HOST_PAGE_TBL_DATA1,
			(u64) bp->ctx_blk_mapping[i] >> 32);
		FUNC1(bp, BNX2_CTX_HOST_PAGE_TBL_CTRL, i |
			BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ);
		for (j = 0; j < 10; j++) {

			val = FUNC0(bp, BNX2_CTX_HOST_PAGE_TBL_CTRL);
			if (!(val & BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ))
				break;
			FUNC3(5);
		}
		if (val & BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ) {
			ret = -EBUSY;
			break;
		}
	}
	return ret;
}