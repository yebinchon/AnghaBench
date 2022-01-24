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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_RTT_SW_RTT_TABLE_ACCESS ; 
 int /*<<< orphan*/  AR_PHY_RTT_SW_RTT_TABLE_ADDR ; 
 int /*<<< orphan*/  AR_PHY_RTT_SW_RTT_TABLE_DATA ; 
 int /*<<< orphan*/  AR_PHY_RTT_SW_RTT_TABLE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTT_ACCESS_TIMEOUT ; 
 int RTT_BAD_VALUE ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ath_hw *ah, u8 chain, u32 index)
{
	u32 val;

	val = FUNC5(0, AR_PHY_RTT_SW_RTT_TABLE_ACCESS) |
	      FUNC5(0, AR_PHY_RTT_SW_RTT_TABLE_WRITE) |
	      FUNC5(index, AR_PHY_RTT_SW_RTT_TABLE_ADDR);

	FUNC4(ah, FUNC1(chain), val);
	FUNC7(1);

	val |= FUNC5(1, AR_PHY_RTT_SW_RTT_TABLE_ACCESS);
	FUNC4(ah, FUNC1(chain), val);
	FUNC7(1);

	if (!FUNC6(ah, FUNC1(chain),
			   AR_PHY_RTT_SW_RTT_TABLE_ACCESS, 0,
			   RTT_ACCESS_TIMEOUT))
		return RTT_BAD_VALUE;

	val = FUNC2(FUNC3(ah, FUNC0(chain)),
		 AR_PHY_RTT_SW_RTT_TABLE_DATA);


	return val;
}