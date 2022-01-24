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
struct TYPE_2__ {int /*<<< orphan*/ * spurChans; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hw*,int) ; 

u8 *FUNC1(struct ath_hw *ah, bool is2ghz)
{
	return FUNC0(ah, is2ghz)->spurChans;
}