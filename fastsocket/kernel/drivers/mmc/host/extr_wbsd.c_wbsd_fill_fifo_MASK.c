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
struct wbsd_host {scalar_t__ num_sg; int offset; scalar_t__ remain; int /*<<< orphan*/  fifo_tasklet; scalar_t__ base; TYPE_2__* mrq; } ;
struct mmc_data {int /*<<< orphan*/  bytes_xfered; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {struct mmc_data* data; } ;

/* Variables and functions */
 scalar_t__ WBSD_DFR ; 
 int WBSD_FIFO_EMPTY ; 
 int WBSD_FIFO_EMTHRE ; 
 int WBSD_FIFO_FULL ; 
 scalar_t__ WBSD_FSR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wbsd_host*) ; 
 char* FUNC4 (struct wbsd_host*) ; 

__attribute__((used)) static void FUNC5(struct wbsd_host *host)
{
	struct mmc_data *data = host->mrq->cmd->data;
	char *buffer;
	int i, fsr, fifo;

	/*
	 * Check that we aren't being called after the
	 * entire buffer has been transfered.
	 */
	if (host->num_sg == 0)
		return;

	buffer = FUNC4(host) + host->offset;

	/*
	 * Fill the fifo. This has a tendency to loop longer
	 * than the FIFO length (usually one block).
	 */
	while (!((fsr = FUNC0(host->base + WBSD_FSR)) & WBSD_FIFO_FULL)) {
		/*
		 * The size field in the FSR is broken so we have to
		 * do some guessing.
		 */
		if (fsr & WBSD_FIFO_EMPTY)
			fifo = 0;
		else if (fsr & WBSD_FIFO_EMTHRE)
			fifo = 8;
		else
			fifo = 15;

		for (i = 16; i > fifo; i--) {
			FUNC1(*buffer, host->base + WBSD_DFR);
			buffer++;
			host->offset++;
			host->remain--;

			data->bytes_xfered++;

			/*
			 * End of scatter list entry?
			 */
			if (host->remain == 0) {
				/*
				 * Get next entry. Check if last.
				 */
				if (!FUNC3(host))
					return;

				buffer = FUNC4(host);
			}
		}
	}

	/*
	 * The controller stops sending interrupts for
	 * 'FIFO empty' under certain conditions. So we
	 * need to be a bit more pro-active.
	 */
	FUNC2(&host->fifo_tasklet);
}