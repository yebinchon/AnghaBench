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
struct adapter {scalar_t__ slow_intr_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PL_INT_ENABLE0 ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct adapter *adapter)
{
	FUNC1(adapter, A_PL_INT_ENABLE0, 0);
	FUNC0(adapter, A_PL_INT_ENABLE0);	/* flush */
	adapter->slow_intr_mask = 0;
}