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
typedef  int u_char ;
struct IsdnCardState {int debug; struct BCState* bcs; } ;
struct TYPE_3__ {int /*<<< orphan*/  hscx; scalar_t__ count; } ;
struct TYPE_4__ {TYPE_1__ hscx; } ;
struct BCState {int mode; TYPE_2__ hw; int /*<<< orphan*/  tx_cnt; scalar_t__ tx_skb; } ;

/* Variables and functions */
 int L1_DEB_HSCX ; 
 int L1_DEB_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,char*,char,int) ; 
 int jadeISR_RFO ; 
 int jadeISR_RME ; 
 int jadeISR_RPF ; 
 int jadeISR_XDU ; 
 int jadeISR_XPR ; 
 int /*<<< orphan*/  jadeXCMD_XRES ; 
 int /*<<< orphan*/  jade_HDLC_XCMD ; 
 int /*<<< orphan*/  FUNC2 (struct BCState*) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC5(struct IsdnCardState *cs, u_char val, int jade)
{
	struct BCState *bcs;
	bcs = cs->bcs + jade;
	
	if (val & jadeISR_RFO) {
		/* handled with RDO */
		val &= ~jadeISR_RFO;
	}
	if (val & jadeISR_XDU) {
		/* relevant in HDLC mode only */
		/* don't reset XPR here */
		if (bcs->mode == 1)
			FUNC2(bcs);
		else {
			/* Here we lost an TX interrupt, so
			   * restart transmitting the whole frame.
			 */
			if (bcs->tx_skb) {
			   	FUNC4(bcs->tx_skb, bcs->hw.hscx.count);
				bcs->tx_cnt += bcs->hw.hscx.count;
				bcs->hw.hscx.count = 0;
			}
			FUNC0(cs, bcs->hw.hscx.hscx, jade_HDLC_XCMD, jadeXCMD_XRES);
			if (cs->debug & L1_DEB_WARN)
				FUNC1(cs, "JADE %c EXIR %x Lost TX", 'A'+jade, val);
		}
	}
	if (val & (jadeISR_RME|jadeISR_RPF|jadeISR_XPR)) {
		if (cs->debug & L1_DEB_HSCX)
			FUNC1(cs, "JADE %c interrupt %x", 'A'+jade, val);
		FUNC3(cs, val, jade);
	}
}