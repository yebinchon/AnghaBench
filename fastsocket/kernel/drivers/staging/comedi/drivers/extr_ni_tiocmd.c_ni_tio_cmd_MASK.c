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
struct ni_gpct {int /*<<< orphan*/  lock; int /*<<< orphan*/ * mite_chan; } ;
struct comedi_cmd {int flags; } ;
struct comedi_async {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int CMDF_WRITE ; 
 int EIO ; 
 int FUNC0 (struct ni_gpct*,struct comedi_async*) ; 
 int FUNC1 (struct ni_gpct*,struct comedi_async*) ; 
 int FUNC2 (struct ni_gpct*,struct comedi_async*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct ni_gpct *counter, struct comedi_async *async)
{
	struct comedi_cmd *cmd = &async->cmd;
	int retval = 0;
	unsigned long flags;

	FUNC4(&counter->lock, flags);
	if (counter->mite_chan == NULL) {
		FUNC3
		    ("ni_tio: commands only supported with DMA.  Interrupt-driven commands not yet implemented.\n");
		retval = -EIO;
	} else {
		retval = FUNC0(counter, async);
		if (retval == 0) {
			if (cmd->flags & CMDF_WRITE) {
				retval = FUNC2(counter, async);
			} else {
				retval = FUNC1(counter, async);
			}
		}
	}
	FUNC5(&counter->lock, flags);
	return retval;
}