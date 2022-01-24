#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct uart_pmac_port {TYPE_1__ port; int /*<<< orphan*/ * node; struct uart_pmac_port* mate; } ;
struct tty_struct {int dummy; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int CHAEXT ; 
 int CHARxIP ; 
 int CHATxIP ; 
 int CHBEXT ; 
 int CHBRxIP ; 
 int CHBTxIP ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  RES_H_IUS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct uart_pmac_port* FUNC1 (struct uart_pmac_port*) ; 
 struct tty_struct* FUNC2 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_pmac_port*) ; 
 int FUNC5 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_pmac_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_pmac_port*) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct uart_pmac_port *uap = dev_id;
	struct uart_pmac_port *uap_a;
	struct uart_pmac_port *uap_b;
	int rc = IRQ_NONE;
	struct tty_struct *tty;
	u8 r3;

	uap_a = FUNC1(uap);
	uap_b = uap_a->mate;
       
       	FUNC6(&uap_a->port.lock);
	r3 = FUNC5(uap_a, R3);

#ifdef DEBUG_HARD
	pmz_debug("irq, r3: %x\n", r3);
#endif
       	/* Channel A */
	tty = NULL;
       	if (r3 & (CHAEXT | CHATxIP | CHARxIP)) {
		FUNC9(uap_a, R0, RES_H_IUS);
		FUNC10(uap_a);		
       		if (r3 & CHAEXT)
       			FUNC3(uap_a);
		if (r3 & CHARxIP)
			tty = FUNC2(uap_a);
       		if (r3 & CHATxIP)
       			FUNC4(uap_a);
	        rc = IRQ_HANDLED;
       	}
       	FUNC7(&uap_a->port.lock);
	if (tty != NULL)
		FUNC8(tty);

	if (uap_b->node == NULL)
		goto out;

       	FUNC6(&uap_b->port.lock);
	tty = NULL;
	if (r3 & (CHBEXT | CHBTxIP | CHBRxIP)) {
		FUNC9(uap_b, R0, RES_H_IUS);
		FUNC10(uap_b);
       		if (r3 & CHBEXT)
       			FUNC3(uap_b);
       	       	if (r3 & CHBRxIP)
       			tty = FUNC2(uap_b);
       		if (r3 & CHBTxIP)
       			FUNC4(uap_b);
	       	rc = IRQ_HANDLED;
       	}
       	FUNC7(&uap_b->port.lock);
	if (tty != NULL)
		FUNC8(tty);

 out:
#ifdef DEBUG_HARD
	pmz_debug("irq done.\n");
#endif
	return rc;
}