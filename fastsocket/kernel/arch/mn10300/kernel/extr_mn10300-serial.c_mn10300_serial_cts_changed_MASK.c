#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {int /*<<< orphan*/  cts; } ;
struct TYPE_8__ {TYPE_2__* state; TYPE_3__ icount; } ;
struct mn10300_serial_port {int tx_cts; TYPE_4__ uart; int /*<<< orphan*/ * _control; } ;
struct TYPE_5__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_6__ {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  SC2CTR_TWS ; 
 int SC2STR_CTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mn10300_serial_port *port, u8 st)
{
	u16 ctr;

	port->tx_cts = st;
	port->uart.icount.cts++;

	/* flip the CTS state selector flag to interrupt when it changes
	 * back */
	ctr = *port->_control;
	ctr ^= SC2CTR_TWS;
	*port->_control = ctr;

	FUNC0(&port->uart, st & SC2STR_CTS);
	FUNC1(&port->uart.state->port.delta_msr_wait);
}