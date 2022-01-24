#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int ;
struct IsdnCardState {scalar_t__ subtyp; scalar_t__ debug; } ;
struct BCState {int dummy; } ;

/* Variables and functions */
 scalar_t__ AVM_FRITZ_PCI ; 
 int HDLC_INT_MASK ; 
 int HDLC_INT_RPR ; 
 scalar_t__ HDLC_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct BCState*,int) ; 
 int FUNC1 (struct IsdnCardState*,int,scalar_t__) ; 
 int FUNC2 (struct IsdnCardState*,int,scalar_t__) ; 
 struct BCState* FUNC3 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,char*) ; 

__attribute__((used)) static inline void
FUNC5(struct IsdnCardState *cs)
{
	u_int stat;
	struct BCState *bcs;

	if (cs->subtyp == AVM_FRITZ_PCI) {
		stat = FUNC1(cs, 0, HDLC_STATUS);
	} else {
		stat = FUNC2(cs, 0, HDLC_STATUS);
		if (stat & HDLC_INT_RPR)
			stat |= (FUNC2(cs, 0, HDLC_STATUS+1))<<8;
	}
	if (stat & HDLC_INT_MASK) {
		if (!(bcs = FUNC3(cs, 0))) {
			if (cs->debug)
				FUNC4(cs, "hdlc spurious channel 0 IRQ");
		} else
			FUNC0(bcs, stat);
	}
	if (cs->subtyp == AVM_FRITZ_PCI) {
		stat = FUNC1(cs, 1, HDLC_STATUS);
	} else {
		stat = FUNC2(cs, 1, HDLC_STATUS);
		if (stat & HDLC_INT_RPR)
			stat |= (FUNC2(cs, 1, HDLC_STATUS+1))<<8;
	}
	if (stat & HDLC_INT_MASK) {
		if (!(bcs = FUNC3(cs, 1))) {
			if (cs->debug)
				FUNC4(cs, "hdlc spurious channel 1 IRQ");
		} else
			FUNC0(bcs, stat);
	}
}