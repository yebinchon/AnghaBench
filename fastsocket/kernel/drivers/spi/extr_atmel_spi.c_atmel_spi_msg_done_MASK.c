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
struct spi_message {int status; int /*<<< orphan*/  context; int /*<<< orphan*/  (* complete ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  actual_length; int /*<<< orphan*/  queue; int /*<<< orphan*/  spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct spi_master {TYPE_1__ dev; } ;
struct atmel_spi {scalar_t__ stopping; int /*<<< orphan*/  queue; int /*<<< orphan*/ * next_transfer; int /*<<< orphan*/ * current_transfer; int /*<<< orphan*/  lock; int /*<<< orphan*/  stay; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTCR ; 
 int /*<<< orphan*/  RXTDIS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXTDIS ; 
 int /*<<< orphan*/  FUNC1 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct spi_master *master, struct atmel_spi *as,
		struct spi_message *msg, int status, int stay)
{
	if (!stay || status < 0)
		FUNC2(as, msg->spi);
	else
		as->stay = msg->spi;

	FUNC4(&msg->queue);
	msg->status = status;

	FUNC3(master->dev.parent,
		"xfer complete: %u bytes transferred\n",
		msg->actual_length);

	FUNC8(&as->lock);
	msg->complete(msg->context);
	FUNC7(&as->lock);

	as->current_transfer = NULL;
	as->next_transfer = NULL;

	/* continue if needed */
	if (FUNC5(&as->queue) || as->stopping)
		FUNC6(as, PTCR, FUNC0(RXTDIS) | FUNC0(TXTDIS));
	else
		FUNC1(master);
}