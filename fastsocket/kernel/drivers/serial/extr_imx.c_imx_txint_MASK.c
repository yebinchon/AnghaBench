#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; scalar_t__ membase; scalar_t__ x_char; TYPE_1__* state; } ;
struct imx_port {TYPE_2__ port; } ;
struct circ_buf {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ URTX0 ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct imx_port *sport = dev_id;
	struct circ_buf *xmit = &sport->port.state->xmit;
	unsigned long flags;

	FUNC2(&sport->port.lock,flags);
	if (sport->port.x_char)
	{
		/* Send next char */
		FUNC8(sport->port.x_char, sport->port.membase + URTX0);
		goto out;
	}

	if (FUNC5(xmit) || FUNC6(&sport->port)) {
		FUNC0(&sport->port);
		goto out;
	}

	FUNC1(sport);

	if (FUNC4(xmit) < WAKEUP_CHARS)
		FUNC7(&sport->port);

out:
	FUNC3(&sport->port.lock,flags);
	return IRQ_HANDLED;
}