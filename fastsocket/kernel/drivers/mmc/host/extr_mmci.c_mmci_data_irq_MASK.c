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
struct mmci_host {int /*<<< orphan*/  sg_ptr; scalar_t__ sg_len; int /*<<< orphan*/  data_xfered; } ;
struct mmc_data {int flags; int /*<<< orphan*/  stop; int /*<<< orphan*/  mrq; int /*<<< orphan*/  error; scalar_t__ blksz; } ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 unsigned int MCI_DATABLOCKEND ; 
 unsigned int MCI_DATACRCFAIL ; 
 unsigned int MCI_DATAEND ; 
 unsigned int MCI_DATATIMEOUT ; 
 unsigned int MCI_RXOVERRUN ; 
 unsigned int MCI_TXUNDERRUN ; 
 int MMC_DATA_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmci_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mmci_host *host, struct mmc_data *data,
	      unsigned int status)
{
	if (status & MCI_DATABLOCKEND) {
		host->data_xfered += data->blksz;
	}
	if (status & (MCI_DATACRCFAIL|MCI_DATATIMEOUT|MCI_TXUNDERRUN|MCI_RXOVERRUN)) {
		if (status & MCI_DATACRCFAIL)
			data->error = -EILSEQ;
		else if (status & MCI_DATATIMEOUT)
			data->error = -ETIMEDOUT;
		else if (status & (MCI_TXUNDERRUN|MCI_RXOVERRUN))
			data->error = -EIO;
		status |= MCI_DATAEND;

		/*
		 * We hit an error condition.  Ensure that any data
		 * partially written to a page is properly coherent.
		 */
		if (host->sg_len && data->flags & MMC_DATA_READ)
			FUNC0(FUNC4(host->sg_ptr));
	}
	if (status & MCI_DATAEND) {
		FUNC3(host);

		if (!data->stop) {
			FUNC1(host, data->mrq);
		} else {
			FUNC2(host, data->stop, 0);
		}
	}
}