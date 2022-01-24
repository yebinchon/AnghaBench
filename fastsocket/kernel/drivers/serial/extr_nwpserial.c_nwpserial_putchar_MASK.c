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
struct TYPE_3__ {int /*<<< orphan*/  tx; } ;
struct TYPE_4__ {TYPE_1__ icount; } ;
struct nwpserial_port {TYPE_2__ port; int /*<<< orphan*/  dcr_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_LSR_THRE ; 
 int /*<<< orphan*/  UART_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct nwpserial_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nwpserial_port *up, unsigned char c)
{
	/* check if tx buffer is full */
	FUNC1(up, UART_LSR_THRE);
	FUNC0(up->dcr_host, UART_TX, c);
	up->port.icount.tx++;
}