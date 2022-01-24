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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_hic_hdr {scalar_t__ buf_len; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERR_HOST_INTERFACE_COMMAND ; 
 int /*<<< orphan*/  IXGBE_FLEX_MNG ; 
 int /*<<< orphan*/  IXGBE_HICR ; 
 scalar_t__ IXGBE_HICR_C ; 
 scalar_t__ IXGBE_HICR_EN ; 
 scalar_t__ IXGBE_HICR_SV ; 
 scalar_t__ IXGBE_HI_COMMAND_TIMEOUT ; 
 scalar_t__ IXGBE_HI_MAX_BLOCK_BYTE_LENGTH ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static s32 FUNC8(struct ixgbe_hw *hw, u32 *buffer,
					u32 length)
{
	u32 hicr, i, bi;
	u32 hdr_size = sizeof(struct ixgbe_hic_hdr);
	u8 buf_len, dword_len;

	s32 ret_val = 0;

	if (length == 0 || length & 0x3 ||
	    length > IXGBE_HI_MAX_BLOCK_BYTE_LENGTH) {
		FUNC5(hw, "Buffer length failure.\n");
		ret_val = IXGBE_ERR_HOST_INTERFACE_COMMAND;
		goto out;
	}

	/* Check that the host interface is enabled. */
	hicr = FUNC0(hw, IXGBE_HICR);
	if ((hicr & IXGBE_HICR_EN) == 0) {
		FUNC5(hw, "IXGBE_HOST_EN bit disabled.\n");
		ret_val = IXGBE_ERR_HOST_INTERFACE_COMMAND;
		goto out;
	}

	/* Calculate length in DWORDs */
	dword_len = length >> 2;

	/*
	 * The device driver writes the relevant command block
	 * into the ram area.
	 */
	for (i = 0; i < dword_len; i++)
		FUNC3(hw, IXGBE_FLEX_MNG,
				      i, FUNC4(buffer[i]));

	/* Setting this bit tells the ARC that a new command is pending. */
	FUNC2(hw, IXGBE_HICR, hicr | IXGBE_HICR_C);

	for (i = 0; i < IXGBE_HI_COMMAND_TIMEOUT; i++) {
		hicr = FUNC0(hw, IXGBE_HICR);
		if (!(hicr & IXGBE_HICR_C))
			break;
		FUNC7(1000, 2000);
	}

	/* Check command successful completion. */
	if (i == IXGBE_HI_COMMAND_TIMEOUT ||
	    (!(FUNC0(hw, IXGBE_HICR) & IXGBE_HICR_SV))) {
		FUNC5(hw, "Command has failed with no status valid.\n");
		ret_val = IXGBE_ERR_HOST_INTERFACE_COMMAND;
		goto out;
	}

	/* Calculate length in DWORDs */
	dword_len = hdr_size >> 2;

	/* first pull in the header so we know the buffer length */
	for (bi = 0; bi < dword_len; bi++) {
		buffer[bi] = FUNC1(hw, IXGBE_FLEX_MNG, bi);
		FUNC6(&buffer[bi]);
	}

	/* If there is any thing in data position pull it in */
	buf_len = ((struct ixgbe_hic_hdr *)buffer)->buf_len;
	if (buf_len == 0)
		goto out;

	if (length < (buf_len + hdr_size)) {
		FUNC5(hw, "Buffer not large enough for reply message.\n");
		ret_val = IXGBE_ERR_HOST_INTERFACE_COMMAND;
		goto out;
	}

	/* Calculate length in DWORDs, add 3 for odd lengths */
	dword_len = (buf_len + 3) >> 2;

	/* Pull in the rest of the buffer (bi is where we left off)*/
	for (; bi <= dword_len; bi++) {
		buffer[bi] = FUNC1(hw, IXGBE_FLEX_MNG, bi);
		FUNC6(&buffer[bi]);
	}

out:
	return ret_val;
}