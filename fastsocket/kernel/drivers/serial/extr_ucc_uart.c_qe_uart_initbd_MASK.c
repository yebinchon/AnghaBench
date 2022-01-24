#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uart_qe_port {int rx_nrfifos; int rx_fifosize; int tx_nrfifos; struct qe_bd* tx_cur; int /*<<< orphan*/  tx_fifosize; struct qe_bd* tx_bd_base; void* bd_virt; struct qe_bd* rx_bd_base; struct qe_bd* rx_cur; } ;
struct qe_bd {int /*<<< orphan*/  length; int /*<<< orphan*/  buf; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int BD_SC_EMPTY ; 
 int BD_SC_INTRPT ; 
 int /*<<< orphan*/  BD_SC_P ; 
 int BD_SC_WRAP ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct uart_qe_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uart_qe_port *qe_port)
{
	int i;
	void *bd_virt;
	struct qe_bd *bdp;

	/* Set the physical address of the host memory buffers in the buffer
	 * descriptors, and the virtual address for us to work with.
	 */
	bd_virt = qe_port->bd_virt;
	bdp = qe_port->rx_bd_base;
	qe_port->rx_cur = qe_port->rx_bd_base;
	for (i = 0; i < (qe_port->rx_nrfifos - 1); i++) {
		FUNC2(&bdp->status, BD_SC_EMPTY | BD_SC_INTRPT);
		FUNC3(&bdp->buf, FUNC1(bd_virt, qe_port));
		FUNC2(&bdp->length, 0);
		bd_virt += qe_port->rx_fifosize;
		bdp++;
	}

	/* */
	FUNC2(&bdp->status, BD_SC_WRAP | BD_SC_EMPTY | BD_SC_INTRPT);
	FUNC3(&bdp->buf, FUNC1(bd_virt, qe_port));
	FUNC2(&bdp->length, 0);

	/* Set the physical address of the host memory
	 * buffers in the buffer descriptors, and the
	 * virtual address for us to work with.
	 */
	bd_virt = qe_port->bd_virt +
		FUNC0(qe_port->rx_nrfifos * qe_port->rx_fifosize);
	qe_port->tx_cur = qe_port->tx_bd_base;
	bdp = qe_port->tx_bd_base;
	for (i = 0; i < (qe_port->tx_nrfifos - 1); i++) {
		FUNC2(&bdp->status, BD_SC_INTRPT);
		FUNC3(&bdp->buf, FUNC1(bd_virt, qe_port));
		FUNC2(&bdp->length, 0);
		bd_virt += qe_port->tx_fifosize;
		bdp++;
	}

	/* Loopback requires the preamble bit to be set on the first TX BD */
#ifdef LOOPBACK
	setbits16(&qe_port->tx_cur->status, BD_SC_P);
#endif

	FUNC2(&bdp->status, BD_SC_WRAP | BD_SC_INTRPT);
	FUNC3(&bdp->buf, FUNC1(bd_virt, qe_port));
	FUNC2(&bdp->length, 0);
}