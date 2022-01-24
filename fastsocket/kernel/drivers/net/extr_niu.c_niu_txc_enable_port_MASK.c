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
struct niu {int port; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXC_CONTROL ; 
 int TXC_CONTROL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct niu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct niu *np, int on)
{
	unsigned long flags;
	u64 val, mask;

	FUNC0(np, flags);
	val = FUNC2(TXC_CONTROL);
	mask = (u64)1 << np->port;
	if (on) {
		val |= TXC_CONTROL_ENABLE | mask;
	} else {
		val &= ~mask;
		if ((val & ~TXC_CONTROL_ENABLE) == 0)
			val &= ~TXC_CONTROL_ENABLE;
	}
	FUNC3(TXC_CONTROL, val);
	FUNC1(np, flags);
}