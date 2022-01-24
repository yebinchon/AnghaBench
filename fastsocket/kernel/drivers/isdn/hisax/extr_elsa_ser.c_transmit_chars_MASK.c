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
struct TYPE_3__ {scalar_t__ transp; scalar_t__ transcnt; int MFlag; int /*<<< orphan*/  IER; int /*<<< orphan*/  bcs; int /*<<< orphan*/ * transbuf; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {TYPE_2__ hw; } ;

/* Variables and functions */
 scalar_t__ MAX_MODEM_BUF ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_IER_THRI ; 
 int /*<<< orphan*/  UART_TX ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct IsdnCardState *cs, int *intr_done)
{
	int count;
	
	FUNC0(cs, "transmit_chars: p(%x) cnt(%x)", cs->hw.elsa.transp, 
		cs->hw.elsa.transcnt);
	
	if (cs->hw.elsa.transcnt <= 0) {
		cs->hw.elsa.IER &= ~UART_IER_THRI;
		FUNC3(cs, UART_IER, cs->hw.elsa.IER);
		return;
	}
	count = 16;
	do {
		FUNC4(cs, UART_TX, cs->hw.elsa.transbuf[cs->hw.elsa.transp++]);
		if (cs->hw.elsa.transp >= MAX_MODEM_BUF)
			cs->hw.elsa.transp=0;
		if (--cs->hw.elsa.transcnt <= 0)
			break;
	} while (--count > 0);
	if ((cs->hw.elsa.transcnt < WAKEUP_CHARS) && (cs->hw.elsa.MFlag==2))
		FUNC1(cs->hw.elsa.bcs);

#ifdef SERIAL_DEBUG_INTR
	printk("THRE...");
#endif
	if (intr_done)
		*intr_done = 0;
	if (cs->hw.elsa.transcnt <= 0) {
		cs->hw.elsa.IER &= ~UART_IER_THRI;
		FUNC4(cs, UART_IER, cs->hw.elsa.IER);
	}
}