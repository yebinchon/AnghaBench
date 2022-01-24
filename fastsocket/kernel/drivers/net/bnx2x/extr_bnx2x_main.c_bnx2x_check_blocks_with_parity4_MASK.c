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
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
#define  AEU_INPUTS_ATTN_BITS_ATC_PARITY_ERROR 129 
#define  AEU_INPUTS_ATTN_BITS_PGLUE_PARITY_ERROR 128 
 int /*<<< orphan*/  ATC_REG_ATC_PRTY_STS ; 
 int /*<<< orphan*/  PGLUE_B_REG_PGLUE_B_PRTY_STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct bnx2x *bp, u32 sig,
					    int par_num, bool print)
{
	int i = 0;
	u32 cur_bit = 0;
	for (i = 0; sig; i++) {
		cur_bit = ((u32)0x1 << i);
		if (sig & cur_bit) {
			switch (cur_bit) {
			case AEU_INPUTS_ATTN_BITS_PGLUE_PARITY_ERROR:
				if (print) {
					FUNC0(par_num++, "PGLUE_B");
					FUNC1(bp,
						PGLUE_B_REG_PGLUE_B_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_ATC_PARITY_ERROR:
				if (print) {
					FUNC0(par_num++, "ATC");
					FUNC1(bp,
						      ATC_REG_ATC_PRTY_STS);
				}
				break;
			}

			/* Clear the bit */
			sig &= ~cur_bit;
		}
	}

	return par_num;
}