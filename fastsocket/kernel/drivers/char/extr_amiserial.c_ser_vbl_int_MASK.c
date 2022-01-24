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
struct async_struct {int IER; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct async_struct* IRQ_ports ; 
 int UART_IER_MSI ; 
 int /*<<< orphan*/  FUNC0 (struct async_struct*) ; 

__attribute__((used)) static irqreturn_t FUNC1( int irq, void *data)
{
        /* vbl is just a periodic interrupt we tie into to update modem status */
	struct async_struct * info = IRQ_ports;
	/*
	 * TBD - is it better to unregister from this interrupt or to
	 * ignore it if MSI is clear ?
	 */
	if(info->IER & UART_IER_MSI)
	  FUNC0(info);
	return IRQ_HANDLED;
}