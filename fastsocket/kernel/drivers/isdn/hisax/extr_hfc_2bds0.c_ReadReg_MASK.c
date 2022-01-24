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
typedef  scalar_t__ u_char ;
struct TYPE_3__ {scalar_t__ cip; int addr; } ;
struct TYPE_4__ {TYPE_1__ hfcD; } ;
struct IsdnCardState {int debug; TYPE_2__ hw; } ;

/* Variables and functions */
 int L1_DEB_HSCX_FIFO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline u_char
FUNC3(struct IsdnCardState *cs, int data, u_char reg)
{
	register u_char ret;

	if (data) {
		if (cs->hw.hfcD.cip != reg) { 
			cs->hw.hfcD.cip = reg;
			FUNC1(cs->hw.hfcD.addr | 1, reg);
		}
		ret = FUNC0(cs->hw.hfcD.addr);
#ifdef HFC_REG_DEBUG
		if (cs->debug & L1_DEB_HSCX_FIFO && (data != 2))
			debugl1(cs, "t3c RD %02x %02x", reg, ret);
#endif
	} else
		ret = FUNC0(cs->hw.hfcD.addr | 1);
	return (ret);
}