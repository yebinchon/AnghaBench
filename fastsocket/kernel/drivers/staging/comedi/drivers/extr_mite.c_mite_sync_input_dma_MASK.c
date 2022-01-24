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
struct mite_channel {int dummy; } ;
struct comedi_async {unsigned int buf_write_alloc_count; unsigned int buf_write_count; int scan_progress; int /*<<< orphan*/  events; int /*<<< orphan*/  prealloc_bufsz; int /*<<< orphan*/  subdevice; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_BLOCK ; 
 int /*<<< orphan*/  COMEDI_CB_EOS ; 
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
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
	unsigned int nbytes, old_alloc_count;
	const unsigned bytes_per_scan = FUNC0(async->subdevice);

	old_alloc_count = async->buf_write_alloc_count;
	/*  write alloc as much as we can */
	FUNC1(async, async->prealloc_bufsz);

	nbytes = FUNC3(mite_chan);
	if ((int)(FUNC4(mite_chan) -
		  old_alloc_count) > 0) {
		FUNC5("mite: DMA overwrite of free area\n");
		async->events |= COMEDI_CB_OVERFLOW;
		return -1;
	}

	count = nbytes - async->buf_write_count;
	/* it's possible count will be negative due to
	 * conservative value returned by mite_bytes_written_to_memory_lb */
	if (count <= 0)
		return 0;

	FUNC2(async, count);

	async->scan_progress += count;
	if (async->scan_progress >= bytes_per_scan) {
		async->scan_progress %= bytes_per_scan;
		async->events |= COMEDI_CB_EOS;
	}
	async->events |= COMEDI_CB_BLOCK;
	return 0;
}