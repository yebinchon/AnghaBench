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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int /*<<< orphan*/  txstatus_tasklet; int /*<<< orphan*/  txstatus_fifo; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* tx; } ;
struct TYPE_3__ {int entry_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  TX_STA_FIFO ; 
 int /*<<< orphan*/  TX_STA_FIFO_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rt2x00_dev *rt2x00dev)
{
	u32 status;
	int i;

	/*
	 * The TX_FIFO_STATUS interrupt needs special care. We should
	 * read TX_STA_FIFO but we should do it immediately as otherwise
	 * the register can overflow and we would lose status reports.
	 *
	 * Hence, read the TX_STA_FIFO register and copy all tx status
	 * reports into a kernel FIFO which is handled in the txstatus
	 * tasklet. We use a tasklet to process the tx status reports
	 * because we can schedule the tasklet multiple times (when the
	 * interrupt fires again during tx status processing).
	 *
	 * Furthermore we don't disable the TX_FIFO_STATUS
	 * interrupt here but leave it enabled so that the TX_STA_FIFO
	 * can also be read while the tx status tasklet gets executed.
	 *
	 * Since we have only one producer and one consumer we don't
	 * need to lock the kfifo.
	 */
	for (i = 0; i < rt2x00dev->ops->tx->entry_num; i++) {
		FUNC3(rt2x00dev, TX_STA_FIFO, &status);

		if (!FUNC1(status, TX_STA_FIFO_VALID))
			break;

		if (!FUNC0(&rt2x00dev->txstatus_fifo, &status)) {
			FUNC2(rt2x00dev, "TX status FIFO overrun, drop tx status report\n");
			break;
		}
	}

	/* Schedule the tasklet for processing the tx status. */
	FUNC4(&rt2x00dev->txstatus_tasklet);
}