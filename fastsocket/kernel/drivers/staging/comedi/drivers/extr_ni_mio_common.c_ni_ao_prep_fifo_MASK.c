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
struct comedi_subdevice {int /*<<< orphan*/  async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int reg_type; int ao_fifo_depth; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* stc_writew ) (struct comedi_device*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AO_FIFO_Offset_Load_611x ; 
 int /*<<< orphan*/  DAC_FIFO_Clear ; 
 TYPE_2__ boardtype ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int ni_reg_6xxx_mask ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	int n;

	/* reset fifo */
	devpriv->stc_writew(dev, 1, DAC_FIFO_Clear);
	if (boardtype.reg_type & ni_reg_6xxx_mask)
		FUNC2(dev, 0x6, AO_FIFO_Offset_Load_611x);

	/* load some data */
	n = FUNC0(s->async);
	if (n == 0)
		return 0;

	n /= sizeof(short);
	if (n > boardtype.ao_fifo_depth)
		n = boardtype.ao_fifo_depth;

	FUNC1(dev, s, n);

	return n;
}