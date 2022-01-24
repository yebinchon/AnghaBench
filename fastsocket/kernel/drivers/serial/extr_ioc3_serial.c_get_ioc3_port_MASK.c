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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct ioc3_port {int dummy; } ;
struct ioc3_driver_data {struct ioc3_card** data; } ;
struct ioc3_card {TYPE_1__* ic_port; } ;
struct TYPE_2__ {struct ioc3_port* icp_port; struct uart_port* icp_uart_port; } ;

/* Variables and functions */
 int LOGICAL_PORTS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int PORTS_PER_CARD ; 
 size_t Submodule_slot ; 
 struct ioc3_driver_data* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ioc3_port *FUNC2(struct uart_port *the_port)
{
	struct ioc3_driver_data *idd = FUNC1(the_port->dev);
	struct ioc3_card *card_ptr = idd->data[Submodule_slot];
	int ii, jj;

	if (!card_ptr) {
		FUNC0();
		return NULL;
	}
	for (ii = 0; ii < PORTS_PER_CARD; ii++) {
		for (jj = 0; jj < LOGICAL_PORTS; jj++) {
			if (the_port == &card_ptr->ic_port[ii].icp_uart_port[jj])
				return card_ptr->ic_port[ii].icp_port;
		}
	}
	FUNC0();
	return NULL;
}