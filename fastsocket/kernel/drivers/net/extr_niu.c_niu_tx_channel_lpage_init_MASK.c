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
typedef  int u64 ;
struct niu {scalar_t__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int TX_LOG_PAGE_VLD_FUNC_SHIFT ; 
 int TX_LOG_PAGE_VLD_PAGE0 ; 
 int TX_LOG_PAGE_VLD_PAGE1 ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct niu *np, int channel)
{
	u64 val;

	FUNC8(FUNC0(channel), 0);
	FUNC8(FUNC6(channel), 0);
	FUNC8(FUNC1(channel), 0);
	FUNC8(FUNC7(channel), 0);
	FUNC8(FUNC3(channel), 0);
	FUNC8(FUNC4(channel), 0);
	FUNC8(FUNC2(channel), 0);

	val  = (u64)np->port << TX_LOG_PAGE_VLD_FUNC_SHIFT;
	val |= (TX_LOG_PAGE_VLD_PAGE0 | TX_LOG_PAGE_VLD_PAGE1);
	FUNC8(FUNC5(channel), val);

	/* XXX TXDMA 32bit mode? XXX */

	return 0;
}