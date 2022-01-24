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
#define  AEU_INPUTS_ATTN_BITS_BRB_PARITY_ERROR 134 
#define  AEU_INPUTS_ATTN_BITS_PARSER_PARITY_ERROR 133 
#define  AEU_INPUTS_ATTN_BITS_PBCLIENT_PARITY_ERROR 132 
#define  AEU_INPUTS_ATTN_BITS_SEARCHER_PARITY_ERROR 131 
#define  AEU_INPUTS_ATTN_BITS_TCM_PARITY_ERROR 130 
#define  AEU_INPUTS_ATTN_BITS_TSDM_PARITY_ERROR 129 
#define  AEU_INPUTS_ATTN_BITS_TSEMI_PARITY_ERROR 128 
 scalar_t__ BRB1_REG_BRB1_PRTY_STS ; 
 scalar_t__ GRCBASE_XPB ; 
 scalar_t__ PB_REG_PB_PRTY_STS ; 
 scalar_t__ PRS_REG_PRS_PRTY_STS ; 
 scalar_t__ SRC_REG_SRC_PRTY_STS ; 
 scalar_t__ TCM_REG_TCM_PRTY_STS ; 
 scalar_t__ TSDM_REG_TSDM_PRTY_STS ; 
 scalar_t__ TSEM_REG_TSEM_PRTY_STS_0 ; 
 scalar_t__ TSEM_REG_TSEM_PRTY_STS_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct bnx2x *bp, u32 sig,
					    int par_num, bool print)
{
	int i = 0;
	u32 cur_bit = 0;
	for (i = 0; sig; i++) {
		cur_bit = ((u32)0x1 << i);
		if (sig & cur_bit) {
			switch (cur_bit) {
			case AEU_INPUTS_ATTN_BITS_BRB_PARITY_ERROR:
				if (print) {
					FUNC0(par_num++, "BRB");
					FUNC1(bp,
						      BRB1_REG_BRB1_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_PARSER_PARITY_ERROR:
				if (print) {
					FUNC0(par_num++, "PARSER");
					FUNC1(bp, PRS_REG_PRS_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_TSDM_PARITY_ERROR:
				if (print) {
					FUNC0(par_num++, "TSDM");
					FUNC1(bp,
						      TSDM_REG_TSDM_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_SEARCHER_PARITY_ERROR:
				if (print) {
					FUNC0(par_num++,
							  "SEARCHER");
					FUNC1(bp, SRC_REG_SRC_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_TCM_PARITY_ERROR:
				if (print) {
					FUNC0(par_num++, "TCM");
					FUNC1(bp,
						      TCM_REG_TCM_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_TSEMI_PARITY_ERROR:
				if (print) {
					FUNC0(par_num++, "TSEMI");
					FUNC1(bp,
						      TSEM_REG_TSEM_PRTY_STS_0);
					FUNC1(bp,
						      TSEM_REG_TSEM_PRTY_STS_1);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_PBCLIENT_PARITY_ERROR:
				if (print) {
					FUNC0(par_num++, "XPB");
					FUNC1(bp, GRCBASE_XPB +
							  PB_REG_PB_PRTY_STS);
				}
				break;
			}

			/* Clear the bit */
			sig &= ~cur_bit;
		}
	}

	return par_num;
}