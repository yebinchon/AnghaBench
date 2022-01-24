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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int c_data; int enable_irq; } ;

/* Variables and functions */
 scalar_t__ PARPORT_C ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	devpriv->c_data |= 0x10;
	FUNC0(devpriv->c_data, dev->iobase + PARPORT_C);

	devpriv->enable_irq = 1;

	return 0;
}