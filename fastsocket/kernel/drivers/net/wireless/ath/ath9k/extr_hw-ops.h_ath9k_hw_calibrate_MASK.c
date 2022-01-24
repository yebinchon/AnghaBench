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
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int (* calibrate ) (struct ath_hw*,struct ath9k_channel*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hw*) ; 
 int FUNC1 (struct ath_hw*,struct ath9k_channel*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline bool FUNC2(struct ath_hw *ah,
				      struct ath9k_channel *chan,
				      u8 rxchainmask,
				      bool longcal)
{
	return FUNC0(ah)->calibrate(ah, chan, rxchainmask, longcal);
}