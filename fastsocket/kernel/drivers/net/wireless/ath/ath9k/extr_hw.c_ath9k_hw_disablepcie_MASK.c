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
 int /*<<< orphan*/  AR_PCIE_SERDES ; 
 int /*<<< orphan*/  AR_PCIE_SERDES2 ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ath_hw *ah)
{
	if (!FUNC0(ah))
		return;

	FUNC1(ah, AR_PCIE_SERDES, 0x9248fc00);
	FUNC1(ah, AR_PCIE_SERDES, 0x24924924);
	FUNC1(ah, AR_PCIE_SERDES, 0x28000029);
	FUNC1(ah, AR_PCIE_SERDES, 0x57160824);
	FUNC1(ah, AR_PCIE_SERDES, 0x25980579);
	FUNC1(ah, AR_PCIE_SERDES, 0x00000000);
	FUNC1(ah, AR_PCIE_SERDES, 0x1aaabe40);
	FUNC1(ah, AR_PCIE_SERDES, 0xbe105554);
	FUNC1(ah, AR_PCIE_SERDES, 0x000e1007);

	FUNC1(ah, AR_PCIE_SERDES2, 0x00000000);
}