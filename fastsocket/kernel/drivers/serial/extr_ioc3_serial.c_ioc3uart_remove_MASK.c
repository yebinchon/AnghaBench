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
struct uart_port {int dummy; } ;
struct ioc3_submodule {size_t id; } ;
struct ioc3_port {TYPE_2__* ic_port; int /*<<< orphan*/  ip_dma_ringbuf; scalar_t__ ip_cpu_ringbuf; TYPE_1__* ip_idd; } ;
struct ioc3_driver_data {struct ioc3_port** data; } ;
struct ioc3_card {TYPE_2__* ic_port; int /*<<< orphan*/  ip_dma_ringbuf; scalar_t__ ip_cpu_ringbuf; TYPE_1__* ip_idd; } ;
struct TYPE_4__ {struct ioc3_port* icp_port; struct uart_port* icp_uart_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int LOGICAL_PORTS_PER_CARD ; 
 int /*<<< orphan*/  TOTAL_RING_BUF_SIZE ; 
 int /*<<< orphan*/  ioc3_uart ; 
 int /*<<< orphan*/  FUNC3 (struct ioc3_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC6(struct ioc3_submodule *is,
			struct ioc3_driver_data *idd)
{
	struct ioc3_card *card_ptr = idd->data[is->id];
	struct uart_port *the_port;
	struct ioc3_port *port;
	int ii;

	if (card_ptr) {
		for (ii = 0; ii < LOGICAL_PORTS_PER_CARD; ii++) {
			the_port = &card_ptr->ic_port[FUNC1(ii)].
					icp_uart_port[FUNC0(ii)];
			if (the_port)
				FUNC5(&ioc3_uart, the_port);
			port = card_ptr->ic_port[FUNC1(ii)].icp_port;
			if (port && FUNC2(ii)
					&& (FUNC1(ii) == 0)) {
				FUNC4(port->ip_idd->pdev,
					TOTAL_RING_BUF_SIZE,
					(void *)port->ip_cpu_ringbuf,
					port->ip_dma_ringbuf);
				FUNC3(port);
				card_ptr->ic_port[FUNC1(ii)].
							icp_port = NULL;
			}
		}
		FUNC3(card_ptr);
		idd->data[is->id] = NULL;
	}
	return 0;
}