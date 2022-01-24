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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct code_entry {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_MSG_ETHTOOL ; 
 int BNX2X_MSG_NVM ; 
 int CODE_ENTRY_EXTENDED_DIR_IDX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NVRAM_DIR_OFFSET ; 
 int FUNC1 (struct bnx2x*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct bnx2x *bp, u8 *buff)
{
	u32 rc, dir_offset = NVRAM_DIR_OFFSET;
	int i;

	FUNC0(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM, "NVRAM DIRS CRC test-set\n");

	for (i = 0; i < CODE_ENTRY_EXTENDED_DIR_IDX; i++) {
		rc = FUNC1(bp, dir_offset +
					      sizeof(struct code_entry) * i,
					  buff);
		if (rc)
			return rc;
	}

	return FUNC2(bp, buff);
}