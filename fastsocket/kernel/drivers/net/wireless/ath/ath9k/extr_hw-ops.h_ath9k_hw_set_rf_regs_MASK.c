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
typedef  int /*<<< orphan*/  u16 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int (* set_rf_regs ) (struct ath_hw*,struct ath9k_channel*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hw*) ; 
 int FUNC1 (struct ath_hw*,struct ath9k_channel*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct ath_hw *ah,
					struct ath9k_channel *chan,
					u16 modesIndex)
{
	if (!FUNC0(ah)->set_rf_regs)
		return true;

	return FUNC0(ah)->set_rf_regs(ah, chan, modesIndex);
}