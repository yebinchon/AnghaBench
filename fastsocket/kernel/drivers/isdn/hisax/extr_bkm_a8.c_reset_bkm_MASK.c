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
struct TYPE_4__ {scalar_t__ plx_adr; } ;
struct TYPE_3__ {TYPE_2__ ax; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ SCT_1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(struct IsdnCardState *cs)
{
	if (cs->subtyp == SCT_1) {
		FUNC2(cs->hw.ax.plx_adr + 0x50, (FUNC1(cs->hw.ax.plx_adr + 0x50) & ~4));
		FUNC0(10);
		/* Remove the soft reset */
		FUNC2(cs->hw.ax.plx_adr + 0x50, (FUNC1(cs->hw.ax.plx_adr + 0x50) | 4));
		FUNC0(10);
	}
}