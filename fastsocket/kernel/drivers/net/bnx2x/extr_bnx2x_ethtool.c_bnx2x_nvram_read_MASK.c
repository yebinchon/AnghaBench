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
typedef  int u32 ;
struct TYPE_2__ {int flash_size; } ;
struct bnx2x {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int BNX2X_MSG_ETHTOOL ; 
 int BNX2X_MSG_NVM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int,...) ; 
 int EINVAL ; 
 int MCPR_NVM_COMMAND_FIRST ; 
 int MCPR_NVM_COMMAND_LAST ; 
 int FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int FUNC4 (struct bnx2x*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct bnx2x *bp, u32 offset, u8 *ret_buf,
			    int buf_size)
{
	int rc;
	u32 cmd_flags;
	__be32 val;

	if ((offset & 0x03) || (buf_size & 0x03) || (buf_size == 0)) {
		FUNC0(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
		   "Invalid parameter: offset 0x%x  buf_size 0x%x\n",
		   offset, buf_size);
		return -EINVAL;
	}

	if (offset + buf_size > bp->common.flash_size) {
		FUNC0(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
		   "Invalid parameter: offset (0x%x) + buf_size (0x%x) > flash_size (0x%x)\n",
		   offset, buf_size, bp->common.flash_size);
		return -EINVAL;
	}

	/* request access to nvram interface */
	rc = FUNC1(bp);
	if (rc)
		return rc;

	/* enable access to nvram interface */
	FUNC3(bp);

	/* read the first word(s) */
	cmd_flags = MCPR_NVM_COMMAND_FIRST;
	while ((buf_size > sizeof(u32)) && (rc == 0)) {
		rc = FUNC4(bp, offset, &val, cmd_flags);
		FUNC6(ret_buf, &val, 4);

		/* advance to the next dword */
		offset += sizeof(u32);
		ret_buf += sizeof(u32);
		buf_size -= sizeof(u32);
		cmd_flags = 0;
	}

	if (rc == 0) {
		cmd_flags |= MCPR_NVM_COMMAND_LAST;
		rc = FUNC4(bp, offset, &val, cmd_flags);
		FUNC6(ret_buf, &val, 4);
	}

	/* disable access to nvram interface */
	FUNC2(bp);
	FUNC5(bp);

	return rc;
}