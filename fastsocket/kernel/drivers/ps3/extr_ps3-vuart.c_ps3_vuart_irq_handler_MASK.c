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
struct vuart_bus_priv {int /*<<< orphan*/ * devices; TYPE_1__* bmp; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int PORT_COUNT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *_private)
{
	struct vuart_bus_priv *bus_priv = _private;

	FUNC0(!bus_priv);

	while (1) {
		unsigned int port;

		FUNC2(bus_priv->bmp);

		port = (BITS_PER_LONG - 1) - FUNC1(bus_priv->bmp->status);

		if (port == BITS_PER_LONG)
			break;

		FUNC0(port >= PORT_COUNT);
		FUNC0(!bus_priv->devices[port]);

		FUNC3(bus_priv->devices[port]);
	}

	return IRQ_HANDLED;
}