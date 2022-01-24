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
struct ath_hw {int rxchainmask; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int AR9300_MAX_CHAINS ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah,
					 struct ath9k_channel *chan)
{
	int i;

	if (!FUNC0(ah) && !FUNC2(ah) && !FUNC1(ah))
		return;

	for (i = 0; i < AR9300_MAX_CHAINS; i++) {
		if (!(ah->rxchainmask & (1 << i)))
			continue;
		FUNC4(ah, i, FUNC3(chan));
	}
}