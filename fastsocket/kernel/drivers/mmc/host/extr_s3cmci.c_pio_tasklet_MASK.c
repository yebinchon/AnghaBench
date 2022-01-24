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
struct s3cmci_host {scalar_t__ pio_active; scalar_t__ complete_what; TYPE_2__* mrq; int /*<<< orphan*/  pio_bytes; int /*<<< orphan*/  pio_count; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 scalar_t__ COMPLETION_FINALIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ XFER_NONE ; 
 scalar_t__ XFER_READ ; 
 scalar_t__ XFER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct s3cmci_host*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dbg_err ; 
 int /*<<< orphan*/  FUNC2 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct s3cmci_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct s3cmci_host*,int) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct s3cmci_host *host = (struct s3cmci_host *) data;

	FUNC5(host, true);

	if (host->pio_active == XFER_WRITE)
		FUNC3(host);

	if (host->pio_active == XFER_READ)
		FUNC2(host);

	if (host->complete_what == COMPLETION_FINALIZE) {
		FUNC0(host);
		if (host->pio_active != XFER_NONE) {
			FUNC1(host, dbg_err, "unfinished %s "
			    "- pio_count:[%u] pio_bytes:[%u]\n",
			    (host->pio_active == XFER_READ) ? "read" : "write",
			    host->pio_count, host->pio_bytes);

			if (host->mrq->data)
				host->mrq->data->error = -EINVAL;
		}

		FUNC6(host, false);
		FUNC4(host);
	} else
		FUNC6(host, true);
}