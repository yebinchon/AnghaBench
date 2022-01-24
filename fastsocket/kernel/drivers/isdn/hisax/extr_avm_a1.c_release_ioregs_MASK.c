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
struct TYPE_3__ {scalar_t__* hscxfifo; scalar_t__* hscx; scalar_t__ isacfifo; scalar_t__ isac; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 

__attribute__((used)) static inline void
FUNC1(struct IsdnCardState *cs, int mask)
{
	FUNC0(cs->hw.avm.cfg_reg, 8);
	if (mask & 1)
		FUNC0(cs->hw.avm.isac + 32, 32);
	if (mask & 2)
		FUNC0(cs->hw.avm.isacfifo, 1);
	if (mask & 4)
		FUNC0(cs->hw.avm.hscx[0] + 32, 32);
	if (mask & 8)
		FUNC0(cs->hw.avm.hscxfifo[0], 1);
	if (mask & 0x10)
		FUNC0(cs->hw.avm.hscx[1] + 32, 32);
	if (mask & 0x20)
		FUNC0(cs->hw.avm.hscxfifo[1], 1);
}