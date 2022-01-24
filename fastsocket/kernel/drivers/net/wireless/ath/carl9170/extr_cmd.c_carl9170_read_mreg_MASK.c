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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ar9170 {TYPE_1__* hw; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_CMD_RREG ; 
 int FUNC0 (struct ar9170*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC5(struct ar9170 *ar, const int nregs,
		       const u32 *regs, u32 *out)
{
	int i, err;
	__le32 *offs, *res;

	/* abuse "out" for the register offsets, must be same length */
	offs = (__le32 *)out;
	for (i = 0; i < nregs; i++)
		offs[i] = FUNC1(regs[i]);

	/* also use the same buffer for the input */
	res = (__le32 *)out;

	err = FUNC0(ar, CARL9170_CMD_RREG,
				4 * nregs, (u8 *)offs,
				4 * nregs, (u8 *)res);
	if (err) {
		if (FUNC3()) {
			FUNC4(ar->hw->wiphy, "reading regs failed (%d)\n",
				  err);
		}
		return err;
	}

	/* convert result to cpu endian */
	for (i = 0; i < nregs; i++)
		out[i] = FUNC2(res[i]);

	return 0;
}