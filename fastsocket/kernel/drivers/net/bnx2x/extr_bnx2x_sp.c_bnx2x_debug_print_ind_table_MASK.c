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
struct bnx2x_config_rss_params {int /*<<< orphan*/ * ind_table; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int T_ETH_INDIRECTION_TABLE_SIZE ; 

__attribute__((used)) static inline void FUNC2(struct bnx2x *bp,
					struct bnx2x_config_rss_params *p)
{
	int i;

	FUNC0(BNX2X_MSG_SP, "Setting indirection table to:\n");
	FUNC0(BNX2X_MSG_SP, "0x0000: ");
	for (i = 0; i < T_ETH_INDIRECTION_TABLE_SIZE; i++) {
		FUNC1(BNX2X_MSG_SP, "0x%02x ", p->ind_table[i]);

		/* Print 4 bytes in a line */
		if ((i + 1 < T_ETH_INDIRECTION_TABLE_SIZE) &&
		    (((i + 1) & 0x3) == 0)) {
			FUNC1(BNX2X_MSG_SP, "\n");
			FUNC0(BNX2X_MSG_SP, "0x%04x: ", i + 1);
		}
	}

	FUNC1(BNX2X_MSG_SP, "\n");
}