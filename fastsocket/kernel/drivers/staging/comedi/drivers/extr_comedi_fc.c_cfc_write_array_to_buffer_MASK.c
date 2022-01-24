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
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_async {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_BLOCK ; 
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_async*,int /*<<< orphan*/ ,void*,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_async*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_async*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

unsigned int FUNC5(struct comedi_subdevice *subd,
				       void *data, unsigned int num_bytes)
{
	struct comedi_async *async = subd->async;
	unsigned int retval;

	if (num_bytes == 0)
		return 0;

	retval = FUNC1(async, num_bytes);
	if (retval != num_bytes) {
		FUNC4("comedi: buffer overrun\n");
		async->events |= COMEDI_CB_OVERFLOW;
		return 0;
	}

	FUNC0(async, 0, data, num_bytes);
	FUNC2(async, num_bytes);
	FUNC3(subd, num_bytes);
	async->events |= COMEDI_CB_BLOCK;

	return num_bytes;
}