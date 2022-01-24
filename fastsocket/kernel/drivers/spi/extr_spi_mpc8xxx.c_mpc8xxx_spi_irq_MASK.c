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
typedef  int u32 ;
struct mpc8xxx_spi {int (* get_tx ) (struct mpc8xxx_spi*) ;TYPE_1__* base; int /*<<< orphan*/  done; scalar_t__ count; int /*<<< orphan*/  (* get_rx ) (int,struct mpc8xxx_spi*) ;scalar_t__ rx; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  event; int /*<<< orphan*/  transmit; int /*<<< orphan*/  receive; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SPIE_NE ; 
 int SPIE_NF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct mpc8xxx_spi*) ; 
 int FUNC5 (struct mpc8xxx_spi*) ; 

__attribute__((used)) static irqreturn_t FUNC6(s32 irq, void *context_data)
{
	struct mpc8xxx_spi *mpc8xxx_spi = context_data;
	u32 event;
	irqreturn_t ret = IRQ_NONE;

	/* Get interrupt events(tx/rx) */
	event = FUNC2(&mpc8xxx_spi->base->event);

	/* We need handle RX first */
	if (event & SPIE_NE) {
		u32 rx_data = FUNC2(&mpc8xxx_spi->base->receive);

		if (mpc8xxx_spi->rx)
			mpc8xxx_spi->get_rx(rx_data, mpc8xxx_spi);

		ret = IRQ_HANDLED;
	}

	if ((event & SPIE_NF) == 0)
		/* spin until TX is done */
		while (((event =
			 FUNC2(&mpc8xxx_spi->base->event)) &
						SPIE_NF) == 0)
			FUNC1();

	mpc8xxx_spi->count -= 1;
	if (mpc8xxx_spi->count) {
		u32 word = mpc8xxx_spi->get_tx(mpc8xxx_spi);
		FUNC3(&mpc8xxx_spi->base->transmit, word);
	} else {
		FUNC0(&mpc8xxx_spi->done);
	}

	/* Clear the events */
	FUNC3(&mpc8xxx_spi->base->event, event);

	return ret;
}