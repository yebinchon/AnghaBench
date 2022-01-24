#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ ix1; } ;
struct IsdnCardState {TYPE_2__ hw; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SPECIAL_PORT_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(struct IsdnCardState *cs)
{
	int cnt;

	/* reset isac */
	cnt = 3 * (HZ / 10) + 1;
	while (cnt--) {
		FUNC1(cs->hw.ix1.cfg_reg + SPECIAL_PORT_OFFSET, 1);
		FUNC0(1);	/* wait >=10 ms */
	}
	FUNC1(cs->hw.ix1.cfg_reg + SPECIAL_PORT_OFFSET, 0);
}