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
typedef  short u32 ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;
struct comedi_async {int cur_chan; int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;
struct TYPE_2__ {int reg_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DAC_FIFO_Data ; 
 int /*<<< orphan*/  DAC_FIFO_Data_611x ; 
 TYPE_1__ boardtype ; 
 int FUNC1 (struct comedi_async*,short*) ; 
 int ni_reg_6711 ; 
 int ni_reg_6xxx_mask ; 
 int /*<<< orphan*/  FUNC2 (short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
			    struct comedi_subdevice *s, int n)
{
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	int chan;
	int i;
	short d;
	u32 packed_data;
	int range;
	int err = 1;

	chan = async->cur_chan;
	for (i = 0; i < n; i++) {
		err &= FUNC1(async, &d);
		if (err == 0)
			break;

		range = FUNC0(cmd->chanlist[chan]);

		if (boardtype.reg_type & ni_reg_6xxx_mask) {
			packed_data = d & 0xffff;
			/* 6711 only has 16 bit wide ao fifo */
			if (boardtype.reg_type != ni_reg_6711) {
				err &= FUNC1(async, &d);
				if (err == 0)
					break;
				chan++;
				i++;
				packed_data |= (d << 16) & 0xffff0000;
			}
			FUNC2(packed_data, DAC_FIFO_Data_611x);
		} else {
			FUNC3(d, DAC_FIFO_Data);
		}
		chan++;
		chan %= cmd->chanlist_len;
	}
	async->cur_chan = chan;
	if (err == 0) {
		async->events |= COMEDI_CB_OVERFLOW;
	}
}