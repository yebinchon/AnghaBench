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
 int HFCD_DATA_NODEB ; 
 int L1_DEB_HSCX_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,char*,char,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC2(struct IsdnCardState *cs, int data, u_char reg, u_char value)
{
	if (cs->hw.hfcD.cip != reg) { 
		cs->hw.hfcD.cip = reg;
		FUNC0(cs->hw.hfcD.addr | 1, reg);
	}
	if (data)
		FUNC0(cs->hw.hfcD.addr, value);
#ifdef HFC_REG_DEBUG
	if (cs->debug & L1_DEB_HSCX_FIFO && (data != HFCD_DATA_NODEB))
		debugl1(cs, "t3c W%c %02x %02x", data ? 'D' : 'C', reg, value);
#endif
}