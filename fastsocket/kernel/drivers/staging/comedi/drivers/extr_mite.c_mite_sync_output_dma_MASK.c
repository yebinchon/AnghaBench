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
typedef  unsigned int u32 ;
struct mite_channel {int dummy; } ;
struct TYPE_2__ {unsigned int stop_arg; scalar_t__ stop_src; } ;
struct comedi_async {unsigned int buf_read_alloc_count; unsigned int buf_read_count; int /*<<< orphan*/  events; TYPE_1__ cmd; int /*<<< orphan*/  prealloc_bufsz; int /*<<< orphan*/  subdevice; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_BLOCK ; 
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 scalar_t__ TRIG_COUNT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_async*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_async*,int) ; 
 unsigned int FUNC3 (struct mite_channel*) ; 
 unsigned int FUNC4 (struct mite_channel*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(struct mite_channel *mite_chan,
			 struct comedi_async *async)
{
	int count;
	u32 nbytes_ub, nbytes_lb;
	unsigned int old_alloc_count;
	u32 stop_count =
	    async->cmd.stop_arg * FUNC0(async->subdevice);

	old_alloc_count = async->buf_read_alloc_count;
	/*  read alloc as much as we can */
	FUNC1(async, async->prealloc_bufsz);
	nbytes_lb = FUNC3(mite_chan);
	if (async->cmd.stop_src == TRIG_COUNT &&
	    (int)(nbytes_lb - stop_count) > 0)
		nbytes_lb = stop_count;
	nbytes_ub = FUNC4(mite_chan);
	if (async->cmd.stop_src == TRIG_COUNT &&
	    (int)(nbytes_ub - stop_count) > 0)
		nbytes_ub = stop_count;
	if ((int)(nbytes_ub - old_alloc_count) > 0) {
		FUNC5("mite: DMA underrun\n");
		async->events |= COMEDI_CB_OVERFLOW;
		return -1;
	}
	count = nbytes_lb - async->buf_read_count;
	if (count <= 0)
		return 0;

	if (count) {
		FUNC2(async, count);
		async->events |= COMEDI_CB_BLOCK;
	}
	return 0;
}