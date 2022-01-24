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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_CHAN_SPUR_MASK ; 
 int /*<<< orphan*/  AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_B ; 
 int /*<<< orphan*/  AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_B ; 
 int /*<<< orphan*/  AR_PHY_PILOT_SPUR_MASK ; 
 int /*<<< orphan*/  AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_B ; 
 int /*<<< orphan*/  AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_B ; 
 int /*<<< orphan*/  AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A ; 
 int /*<<< orphan*/  AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A ; 
 int /*<<< orphan*/  AR_PHY_SPUR_MASK_B ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct ath_hw *ah,
				     int freq_offset)
{
	int mask_index = 0;

	mask_index = (freq_offset << 4) / 5;
	if (mask_index < 0)
		mask_index = mask_index - 1;

	mask_index = mask_index & 0x7f;

	FUNC0(ah, AR_PHY_PILOT_SPUR_MASK,
		      AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_B,
		      mask_index);

	/* A == B */
	FUNC0(ah, AR_PHY_SPUR_MASK_B,
		      AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A,
		      mask_index);

	FUNC0(ah, AR_PHY_CHAN_SPUR_MASK,
		      AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_B,
		      mask_index);
	FUNC0(ah, AR_PHY_PILOT_SPUR_MASK,
		      AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_B, 0xe);
	FUNC0(ah, AR_PHY_CHAN_SPUR_MASK,
		      AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_B, 0xe);

	/* A == B */
	FUNC0(ah, AR_PHY_SPUR_MASK_B,
		      AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A, 0xa0);
}