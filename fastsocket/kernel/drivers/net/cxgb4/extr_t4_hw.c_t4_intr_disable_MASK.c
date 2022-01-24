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
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PL_INT_MAP0 ; 
 int /*<<< orphan*/  PL_PF_INT_ENABLE ; 
 int /*<<< orphan*/  PL_WHOAMI ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct adapter *adapter)
{
	u32 pf = FUNC1(FUNC2(adapter, PL_WHOAMI));

	FUNC4(adapter, FUNC0(PL_PF_INT_ENABLE), 0);
	FUNC3(adapter, PL_INT_MAP0, 1 << pf, 0);
}