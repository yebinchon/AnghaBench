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
struct mmc_data {int bytes_xfered; int blocks; int blksz; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {struct mmc_data* data; } ;

/* Variables and functions */
 scalar_t__ WBSD_DFR ; 
 int WBSD_FIFO_EMPTY ; 
 int WBSD_FIFO_FULL ; 
 int WBSD_FIFO_FUTHRE ; 
 scalar_t__ WBSD_FSR ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wbsd_host*) ; 
 char* FUNC3 (struct wbsd_host*) ; 

__attribute__((used)) static void FUNC4(struct wbsd_host *host)
{
	struct mmc_data *data = host->mrq->cmd->data;
	char *buffer;
	int i, fsr, fifo;

	/*
	 * Handle excessive data.
	 */
	if (host->num_sg == 0)
		return;

	buffer = FUNC3(host) + host->offset;

	/*
	 * Drain the fifo. This has a tendency to loop longer
	 * than the FIFO length (usually one block).
	 */
	while (!((fsr = FUNC0(host->base + WBSD_FSR)) & WBSD_FIFO_EMPTY)) {
		/*
		 * The size field in the FSR is broken so we have to
		 * do some guessing.
		 */
		if (fsr & WBSD_FIFO_FULL)
			fifo = 16;
		else if (fsr & WBSD_FIFO_FUTHRE)
			fifo = 8;
		else
			fifo = 1;

		for (i = 0; i < fifo; i++) {
			*buffer = FUNC0(host->base + WBSD_DFR);
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
				if (!FUNC2(host))
					return;

				buffer = FUNC3(host);
			}
		}
	}

	/*
	 * This is a very dirty hack to solve a
	 * hardware problem. The chip doesn't trigger
	 * FIFO threshold interrupts properly.
	 */
	if ((data->blocks * data->blksz - data->bytes_xfered) < 16)
		FUNC1(&host->fifo_tasklet);
}