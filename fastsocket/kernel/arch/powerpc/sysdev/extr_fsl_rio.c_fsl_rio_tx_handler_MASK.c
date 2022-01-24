#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int phys; int /*<<< orphan*/  dev_id; } ;
struct rio_priv {TYPE_3__* msg_regs; TYPE_2__ msg_tx_ring; } ;
struct rio_mport {TYPE_1__* outb_msg; struct rio_priv* priv; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  osr; int /*<<< orphan*/  odqdpar; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* mcback ) (struct rio_mport*,int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RIO_MSG_OSR_EOMI ; 
 int RIO_MSG_OSR_QOI ; 
 int RIO_MSG_OSR_TE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rio_mport*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int irq, void *dev_instance)
{
	int osr;
	struct rio_mport *port = (struct rio_mport *)dev_instance;
	struct rio_priv *priv = port->priv;

	osr = FUNC0(&priv->msg_regs->osr);

	if (osr & RIO_MSG_OSR_TE) {
		FUNC2("RIO: outbound message transmission error\n");
		FUNC1(&priv->msg_regs->osr, RIO_MSG_OSR_TE);
		goto out;
	}

	if (osr & RIO_MSG_OSR_QOI) {
		FUNC2("RIO: outbound message queue overflow\n");
		FUNC1(&priv->msg_regs->osr, RIO_MSG_OSR_QOI);
		goto out;
	}

	if (osr & RIO_MSG_OSR_EOMI) {
		u32 dqp = FUNC0(&priv->msg_regs->odqdpar);
		int slot = (dqp - priv->msg_tx_ring.phys) >> 5;
		port->outb_msg[0].mcback(port, priv->msg_tx_ring.dev_id, -1,
				slot);

		/* Ack the end-of-message interrupt */
		FUNC1(&priv->msg_regs->osr, RIO_MSG_OSR_EOMI);
	}

      out:
	return IRQ_HANDLED;
}