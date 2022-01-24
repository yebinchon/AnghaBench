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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int (* acquire ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;} ;
struct e1000_nvm_info {scalar_t__ word_size; int address_bits; int opcode_bits; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef  int s32 ;

/* Variables and functions */
 int E1000_ERR_NVM ; 
 scalar_t__ NVM_A8_OPCODE_SPI ; 
 scalar_t__ NVM_READ_OPCODE_SPI ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 

s32 FUNC7(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
{
	struct e1000_nvm_info *nvm = &hw->nvm;
	u32 i = 0;
	s32 ret_val;
	u16 word_in;
	u8 read_opcode = NVM_READ_OPCODE_SPI;

	/* A check for invalid values:  offset too large, too many words,
	 * and not enough words.
	 */
	if ((offset >= nvm->word_size) || (words > (nvm->word_size - offset)) ||
	    (words == 0)) {
		FUNC0("nvm parameter(s) out of bounds\n");
		ret_val = -E1000_ERR_NVM;
		goto out;
	}

	ret_val = nvm->ops.acquire(hw);
	if (ret_val)
		goto out;

	ret_val = FUNC1(hw);
	if (ret_val)
		goto release;

	FUNC4(hw);

	if ((nvm->address_bits == 8) && (offset >= 128))
		read_opcode |= NVM_A8_OPCODE_SPI;

	/* Send the READ command (opcode + addr) */
	FUNC3(hw, read_opcode, nvm->opcode_bits);
	FUNC3(hw, (u16)(offset*2), nvm->address_bits);

	/* Read the data.  SPI NVMs increment the address with each byte
	 * read and will roll over if reading beyond the end.  This allows
	 * us to read the whole NVM from any offset
	 */
	for (i = 0; i < words; i++) {
		word_in = FUNC2(hw, 16);
		data[i] = (word_in >> 8) | (word_in << 8);
	}

release:
	nvm->ops.release(hw);

out:
	return ret_val;
}