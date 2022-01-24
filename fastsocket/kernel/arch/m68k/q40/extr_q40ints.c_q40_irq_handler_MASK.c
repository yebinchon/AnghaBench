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
struct pt_regs {int sr; } ;
struct TYPE_2__ {int mask; unsigned int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIRQ_REG ; 
 int /*<<< orphan*/  FRAME_CLEAR_REG ; 
 int /*<<< orphan*/  IIRQ_REG ; 
 int IRQ_INPROGRESS ; 
 unsigned int Q40_IRQ6_MASK ; 
 unsigned int Q40_IRQ_EXT_MASK ; 
 unsigned int Q40_IRQ_FRAME ; 
 unsigned int Q40_IRQ_FRAME_MASK ; 
 unsigned int Q40_IRQ_KEYBOARD ; 
 unsigned int Q40_IRQ_KEYB_MASK ; 
 unsigned int Q40_IRQ_SAMPLE ; 
 unsigned int Q40_IRQ_SER_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct pt_regs*) ; 
 int /*<<< orphan*/  aliased_irq ; 
 scalar_t__ ccleirq ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int disabled ; 
 TYPE_1__* eirqs ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ mext_disabled ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 
 int* q40_state ; 

__attribute__((used)) static void FUNC7(unsigned int irq, struct pt_regs *fp)
{
	unsigned mir, mer;
	int i;

//repeat:
	mir = FUNC4(IIRQ_REG);
#ifdef CONFIG_BLK_DEV_FD
	if ((mir & Q40_IRQ_EXT_MASK) &&
	    (master_inb(EIRQ_REG) & Q40_IRQ6_MASK)) {
		floppy_hardint();
		return;
	}
#endif
	switch (irq) {
	case 4:
	case 6:
		FUNC0(Q40_IRQ_SAMPLE, fp);
		return;
	}
	if (mir & Q40_IRQ_FRAME_MASK) {
		FUNC0(Q40_IRQ_FRAME, fp);
		FUNC5(-1, FRAME_CLEAR_REG);
	}
	if ((mir & Q40_IRQ_SER_MASK) || (mir & Q40_IRQ_EXT_MASK)) {
		mer = FUNC4(EIRQ_REG);
		for (i = 0; eirqs[i].mask; i++) {
			if (mer & eirqs[i].mask) {
				irq = eirqs[i].irq;
/*
 * There is a little mess wrt which IRQ really caused this irq request. The
 * main problem is that IIRQ_REG and EIRQ_REG reflect the state when they
 * are read - which is long after the request came in. In theory IRQs should
 * not just go away but they occasionally do
 */
				if (irq > 4 && irq <= 15 && mext_disabled) {
					/*aliased_irq++;*/
					goto iirq;
				}
				if (q40_state[irq] & IRQ_INPROGRESS) {
					/* some handlers do local_irq_enable() for irq latency reasons, */
					/* however reentering an active irq handler is not permitted */
#ifdef IP_USE_DISABLE
					/* in theory this is the better way to do it because it still */
					/* lets through eg the serial irqs, unfortunately it crashes */
					disable_irq(irq);
					disabled = 1;
#else
					/*printk("IRQ_INPROGRESS detected for irq %d, disabling - %s disabled\n",
						irq, disabled ? "already" : "not yet"); */
					fp->sr = (((fp->sr) & (~0x700))+0x200);
					disabled = 1;
#endif
					goto iirq;
				}
				q40_state[irq] |= IRQ_INPROGRESS;
				FUNC0(irq, fp);
				q40_state[irq] &= ~IRQ_INPROGRESS;

				/* naively enable everything, if that fails than    */
				/* this function will be reentered immediately thus */
				/* getting another chance to disable the IRQ        */

				if (disabled) {
#ifdef IP_USE_DISABLE
					if (irq > 4) {
						disabled = 0;
						enable_irq(irq);
					}
#else
					disabled = 0;
					/*printk("reenabling irq %d\n", irq); */
#endif
				}
// used to do 'goto repeat;' here, this delayed bh processing too long
				return;
			}
		}
		if (mer && ccleirq > 0 && !aliased_irq) {
			FUNC6("ISA interrupt from unknown source? EIRQ_REG = %x\n",mer);
			ccleirq--;
		}
	}
 iirq:
	mir = FUNC4(IIRQ_REG);
	/* should test whether keyboard irq is really enabled, doing it in defhand */
	if (mir & Q40_IRQ_KEYB_MASK)
		FUNC0(Q40_IRQ_KEYBOARD, fp);

	return;
}