#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hysdn_lock; int /*<<< orphan*/  irq_queue; int /*<<< orphan*/  set_errlog_state; int /*<<< orphan*/  waitpofready; int /*<<< orphan*/  writebootseq; int /*<<< orphan*/  writebootimg; int /*<<< orphan*/  testram; int /*<<< orphan*/  (* releasehardware ) (TYPE_1__*) ;int /*<<< orphan*/  (* stopcard ) (TYPE_1__*) ;int /*<<< orphan*/  irq; scalar_t__ iobase; scalar_t__ membase; int /*<<< orphan*/  dpram; scalar_t__ memend; } ;
typedef  TYPE_1__ hysdn_card ;

/* Variables and functions */
 scalar_t__ ERG_DPRAM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ PCI9050_INTR_REG ; 
 scalar_t__ PCI9050_USER_IO ; 
 int /*<<< orphan*/  ergo_interrupt ; 
 int /*<<< orphan*/  ergo_irq_bh ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ergo_set_errlog_state ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  ergo_testram ; 
 int /*<<< orphan*/  ergo_waitpofready ; 
 int /*<<< orphan*/  ergo_writebootimg ; 
 int /*<<< orphan*/  ergo_writebootseq ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(hysdn_card * card)
{
	if (!FUNC6(card->iobase + PCI9050_INTR_REG, 1, "HYSDN")) 
		return (-1);
	if (!FUNC6(card->iobase + PCI9050_USER_IO, 1, "HYSDN")) {
		FUNC4(card->iobase + PCI9050_INTR_REG, 1);
		return (-1);	/* ports already in use */
	}
	card->memend = card->membase + ERG_DPRAM_PAGE_SIZE - 1;
	if (!(card->dpram = FUNC3(card->membase, ERG_DPRAM_PAGE_SIZE))) {
		FUNC4(card->iobase + PCI9050_INTR_REG, 1);
		FUNC4(card->iobase + PCI9050_USER_IO, 1);
		return (-1);
	}

	FUNC2(card);	/* disable interrupts */
	if (FUNC5(card->irq, ergo_interrupt, IRQF_SHARED, "HYSDN", card)) {
		FUNC1(card); /* return the acquired hardware */
		return (-1);
	}
	/* success, now setup the function pointers */
	card->stopcard = ergo_stopcard;
	card->releasehardware = ergo_releasehardware;
	card->testram = ergo_testram;
	card->writebootimg = ergo_writebootimg;
	card->writebootseq = ergo_writebootseq;
	card->waitpofready = ergo_waitpofready;
	card->set_errlog_state = ergo_set_errlog_state;
	FUNC0(&card->irq_queue, ergo_irq_bh);
	FUNC7(&card->hysdn_lock);

	return (0);
}