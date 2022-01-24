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
struct TYPE_3__ {scalar_t__ cfg_reg; scalar_t__* hscx; } ;
struct TYPE_4__ {TYPE_1__ teles3; } ;
struct IsdnCardState {scalar_t__ typ; TYPE_2__ hw; } ;

/* Variables and functions */
 scalar_t__ ISDN_CTYPE_COMPAQ_ISA ; 
 scalar_t__ ISDN_CTYPE_TELESPCMCIA ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(struct IsdnCardState *cs)
{
	if (cs->typ == ISDN_CTYPE_TELESPCMCIA) {
		FUNC1(cs->hw.teles3.hscx[1], 96);
	} else {
		if (cs->hw.teles3.cfg_reg) {
			if (cs->typ == ISDN_CTYPE_COMPAQ_ISA) {
				FUNC1(cs->hw.teles3.cfg_reg, 1);
			} else {
				FUNC1(cs->hw.teles3.cfg_reg, 8);
			}
		}
		FUNC0(cs, 0x7);
	}
}