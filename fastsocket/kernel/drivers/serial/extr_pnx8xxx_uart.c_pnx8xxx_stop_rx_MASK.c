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
typedef  int u32 ;
struct uart_port {int dummy; } ;
struct pnx8xxx_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNX8XXX_ICLR ; 
 int /*<<< orphan*/  PNX8XXX_IEN ; 
 int PNX8XXX_UART_INT_ALLRX ; 
 int FUNC0 (struct pnx8xxx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pnx8xxx_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;
	u32 ien;

	/* Disable RX intr */
	ien = FUNC0(sport, PNX8XXX_IEN);
	FUNC1(sport, PNX8XXX_IEN, ien & ~PNX8XXX_UART_INT_ALLRX);

	/* Clear all pending RX intr */
	FUNC1(sport, PNX8XXX_ICLR, PNX8XXX_UART_INT_ALLRX);
}