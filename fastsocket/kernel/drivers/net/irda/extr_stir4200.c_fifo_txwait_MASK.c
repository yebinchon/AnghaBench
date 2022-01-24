#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stir_cb {unsigned long* fifo_status; unsigned long speed; TYPE_1__* netdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FIFOCTL_CLR ; 
 unsigned long FIFOCTL_DIR ; 
 unsigned long FIFOCTL_EMPTY ; 
 int FIFO_REGS_SIZE ; 
 int /*<<< orphan*/  REG_FIFOCTL ; 
 int STIR_FIFO_SIZE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long) ; 
 int FUNC5 (struct stir_cb*,int /*<<< orphan*/ ,unsigned long*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct stir_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct stir_cb *stir, int space)
{
	int err;
	unsigned long count, status;
	unsigned long prev_count = 0x1fff;

	/* Read FIFO status and count */
	for (;; prev_count = count) {
		err = FUNC5(stir, REG_FIFOCTL, stir->fifo_status, 
				   FIFO_REGS_SIZE);
		if (FUNC7(err != FIFO_REGS_SIZE)) {
			FUNC0(&stir->netdev->dev,
				 "FIFO register read error: %d\n", err);

			return err;
		}

		status = stir->fifo_status[0];
		count = (unsigned)(stir->fifo_status[2] & 0x1f) << 8 
			| stir->fifo_status[1];

		FUNC4("fifo status 0x%lx count %lu\n", status, count);

		/* is fifo receiving already, or empty */
		if (!(status & FIFOCTL_DIR)
		    || (status & FIFOCTL_EMPTY))
			return 0;

		if (FUNC6(current))
			return -EINTR;

		/* shutting down? */
		if (!FUNC3(stir->netdev)
		    || !FUNC2(stir->netdev))
			return -ESHUTDOWN;

		/* only waiting for some space */
		if (space >= 0 && STIR_FIFO_SIZE - 4 > space + count)
			return 0;

		/* queue confused */
		if (prev_count < count)
			break;

		/* estimate transfer time for remaining chars */
		FUNC1((count * 8000) / stir->speed);
	}
			
	err = FUNC8(stir, REG_FIFOCTL, FIFOCTL_CLR);
	if (err) 
		return err;
	err = FUNC8(stir, REG_FIFOCTL, 0);
	if (err)
		return err;

	return 0;
}