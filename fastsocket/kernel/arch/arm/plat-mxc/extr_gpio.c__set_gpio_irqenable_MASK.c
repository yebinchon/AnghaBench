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
struct mxc_gpio_port {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ GPIO_IMR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mxc_gpio_port *port, u32 index,
				int enable)
{
	u32 l;

	l = FUNC0(port->base + GPIO_IMR);
	l = (l & (~(1 << index))) | (!!enable << index);
	FUNC1(l, port->base + GPIO_IMR);
}