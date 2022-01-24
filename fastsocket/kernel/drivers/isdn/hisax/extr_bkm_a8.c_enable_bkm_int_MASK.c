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
struct IsdnCardState {scalar_t__ typ; TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ ISDN_CTYPE_SCT_QUADRO ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(struct IsdnCardState *cs, unsigned bEnable)
{
	if (cs->typ == ISDN_CTYPE_SCT_QUADRO) {
		if (bEnable)
			FUNC1(cs->hw.ax.plx_adr + 0x4C, (FUNC0(cs->hw.ax.plx_adr + 0x4C) | 0x41));
		else
			FUNC1(cs->hw.ax.plx_adr + 0x4C, (FUNC0(cs->hw.ax.plx_adr + 0x4C) & ~0x41));
	}
}