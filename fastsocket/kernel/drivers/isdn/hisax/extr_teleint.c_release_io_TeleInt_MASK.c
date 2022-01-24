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
struct TYPE_4__ {TYPE_1__ hfc; } ;
struct IsdnCardState {TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*) ; 

__attribute__((used)) static void
FUNC3(struct IsdnCardState *cs)
{
	FUNC0(&cs->hw.hfc.timer);
	FUNC2(cs);
	if (cs->hw.hfc.addr)
		FUNC1(cs->hw.hfc.addr, 2);
}