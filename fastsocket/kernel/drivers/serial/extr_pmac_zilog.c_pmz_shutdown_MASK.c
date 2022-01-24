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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;
struct uart_pmac_port {int* curregs; int /*<<< orphan*/  mate; int /*<<< orphan*/  flags; TYPE_1__ port; int /*<<< orphan*/ * node; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EXT_INT_ENAB ; 
 int /*<<< orphan*/  PMACZILOG_FLAG_IS_IRQ_ON ; 
 int /*<<< orphan*/  PMACZILOG_FLAG_IS_OPEN ; 
 size_t R1 ; 
 size_t R3 ; 
 size_t R5 ; 
 int RxENABLE ; 
 int RxINT_MASK ; 
 int SND_BRK ; 
 int TxENABLE ; 
 int TxINT_ENAB ; 
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC1 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_2__* FUNC7 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  pmz_irq_mutex ; 
 int /*<<< orphan*/  FUNC8 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_pmac_port* FUNC12 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct uart_pmac_port*,size_t,int) ; 
 int /*<<< orphan*/  FUNC14 (struct uart_pmac_port*) ; 

__attribute__((used)) static void FUNC15(struct uart_port *port)
{
	struct uart_pmac_port *uap = FUNC12(port);
	unsigned long flags;

	FUNC6("pmz: shutdown()\n");

	if (uap->node == NULL)
		return;

	FUNC4(&pmz_irq_mutex);

	/* Release interrupt handler */
       	FUNC3(uap->port.irq, uap);

	FUNC10(&port->lock, flags);

	uap->flags &= ~PMACZILOG_FLAG_IS_OPEN;

	if (!FUNC2(uap->mate))
		FUNC7(uap)->flags &= ~PMACZILOG_FLAG_IS_IRQ_ON;

	/* Disable interrupts */
	if (!FUNC0(uap)) {
		uap->curregs[R1] &= ~(EXT_INT_ENAB | TxINT_ENAB | RxINT_MASK);
		FUNC13(uap, R1, uap->curregs[R1]);
		FUNC14(uap);
	}

	if (FUNC1(uap) || FUNC0(uap)) {
		FUNC11(&port->lock, flags);
		FUNC5(&pmz_irq_mutex);
		return;
	}

	/* Disable receiver and transmitter.  */
	uap->curregs[R3] &= ~RxENABLE;
	uap->curregs[R5] &= ~TxENABLE;

	/* Disable all interrupts and BRK assertion.  */
	uap->curregs[R5] &= ~SND_BRK;
	FUNC8(uap);

	/* Shut the chip down */
	FUNC9(uap, 0);

	FUNC11(&port->lock, flags);

	FUNC5(&pmz_irq_mutex);

	FUNC6("pmz: shutdown() done.\n");
}