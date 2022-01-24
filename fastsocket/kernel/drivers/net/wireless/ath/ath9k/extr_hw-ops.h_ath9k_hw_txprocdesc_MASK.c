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
struct ath_tx_status {int dummy; } ;
struct ath_hw {int dummy; } ;
struct TYPE_2__ {int (* proc_txdesc ) (struct ath_hw*,void*,struct ath_tx_status*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hw*) ; 
 int FUNC1 (struct ath_hw*,void*,struct ath_tx_status*) ; 

__attribute__((used)) static inline int FUNC2(struct ath_hw *ah, void *ds,
				      struct ath_tx_status *ts)
{
	return FUNC0(ah)->proc_txdesc(ah, ds, ts);
}