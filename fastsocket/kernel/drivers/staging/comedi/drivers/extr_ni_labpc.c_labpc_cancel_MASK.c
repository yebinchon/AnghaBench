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
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  spinlock; } ;
struct TYPE_2__ {int command2_bits; int command3_bits; int /*<<< orphan*/  (* write_byte ) (int,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ COMMAND2_REG ; 
 scalar_t__ COMMAND3_REG ; 
 int HWTRIG_BIT ; 
 int PRETRIG_BIT ; 
 int SWTRIG_BIT ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s)
{
	unsigned long flags;

	FUNC0(&dev->spinlock, flags);
	devpriv->command2_bits &= ~SWTRIG_BIT & ~HWTRIG_BIT & ~PRETRIG_BIT;
	devpriv->write_byte(devpriv->command2_bits, dev->iobase + COMMAND2_REG);
	FUNC1(&dev->spinlock, flags);

	devpriv->command3_bits = 0;
	devpriv->write_byte(devpriv->command3_bits, dev->iobase + COMMAND3_REG);

	return 0;
}