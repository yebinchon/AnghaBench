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
struct uart_port {unsigned long iobase; unsigned long mapbase; int regshift; int /*<<< orphan*/ * membase; int /*<<< orphan*/  iotype; } ;
struct serial_private {int /*<<< orphan*/ * remapped_bar; struct pci_dev* dev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int IORESOURCE_MEM ; 
 int PCI_NUM_BAR_RESOURCES ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  UPIO_PORT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (struct pci_dev*,int) ; 
 unsigned long FUNC2 (struct pci_dev*,int) ; 
 unsigned long FUNC3 (struct pci_dev*,int) ; 

__attribute__((used)) static int
FUNC4(struct serial_private *priv, struct uart_port *port,
	   int bar, int offset, int regshift)
{
	struct pci_dev *dev = priv->dev;
	unsigned long base, len;

	if (bar >= PCI_NUM_BAR_RESOURCES)
		return -EINVAL;

	base = FUNC3(dev, bar);

	if (FUNC1(dev, bar) & IORESOURCE_MEM) {
		len =  FUNC2(dev, bar);

		if (!priv->remapped_bar[bar])
			priv->remapped_bar[bar] = FUNC0(base, len);
		if (!priv->remapped_bar[bar])
			return -ENOMEM;

		port->iotype = UPIO_MEM;
		port->iobase = 0;
		port->mapbase = base + offset;
		port->membase = priv->remapped_bar[bar] + offset;
		port->regshift = regshift;
	} else {
		port->iotype = UPIO_PORT;
		port->iobase = base + offset;
		port->mapbase = 0;
		port->membase = NULL;
		port->regshift = 0;
	}
	return 0;
}