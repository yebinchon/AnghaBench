#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * function; } ;
struct TYPE_5__ {scalar_t__ cfg_reg; TYPE_3__ timer; } ;
struct TYPE_4__ {TYPE_2__ saphir; } ;
struct IsdnCardState {TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ IRQ_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(struct IsdnCardState *cs)
{
	FUNC0(cs->hw.saphir.cfg_reg + IRQ_REG, 0xff);
	FUNC1(&cs->hw.saphir.timer);
	cs->hw.saphir.timer.function = NULL;
	if (cs->hw.saphir.cfg_reg)
		FUNC2(cs->hw.saphir.cfg_reg, 6);
}