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
struct TYPE_3__ {scalar_t__ addr; int /*<<< orphan*/  timer; } ;
struct TYPE_4__ {TYPE_1__ hfcD; } ;
struct IsdnCardState {TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(struct IsdnCardState *cs)
{
	FUNC1(cs);
	FUNC0(&cs->hw.hfcD.timer);
	if (cs->hw.hfcD.addr)
		FUNC2(cs->hw.hfcD.addr, 2);
}