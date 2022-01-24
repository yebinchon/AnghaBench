#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rc_dev {struct loopback_dev* priv; } ;
struct loopback_dev {scalar_t__ txcarrier; scalar_t__ rxcarriermin; scalar_t__ rxcarriermax; int txmask; scalar_t__ learning; } ;
struct TYPE_4__ {int pulse; int duration; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int EINVAL ; 
 int RXMASK_LEARNING ; 
 int RXMASK_REGULAR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rc_dev*,TYPE_1__*) ; 
 TYPE_1__ rawir ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

__attribute__((used)) static int FUNC8(struct rc_dev *dev, int *txbuf, u32 n)
{
	struct loopback_dev *lodev = dev->priv;
	u32 rxmask;
	unsigned count;
	unsigned total_duration = 0;
	unsigned i;
	FUNC0(rawir);

	if (n == 0 || n % sizeof(int)) {
		FUNC2("invalid tx buffer size\n");
		return -EINVAL;
	}

	count = n / sizeof(int);
	for (i = 0; i < count; i++)
		total_duration += FUNC1(txbuf[i]);

	if (total_duration == 0) {
		FUNC2("invalid tx data, total duration zero\n");
		return -EINVAL;
	}

	if (lodev->txcarrier < lodev->rxcarriermin ||
	    lodev->txcarrier > lodev->rxcarriermax) {
		FUNC2("ignoring tx, carrier out of range\n");
		goto out;
	}

	if (lodev->learning)
		rxmask = RXMASK_LEARNING;
	else
		rxmask = RXMASK_REGULAR;

	if (!(rxmask & lodev->txmask)) {
		FUNC2("ignoring tx, rx mask mismatch\n");
		goto out;
	}

	for (i = 0; i < count; i++) {
		rawir.pulse = i % 2 ? false : true;
		rawir.duration = FUNC1(txbuf[i]) * 1000;
		if (rawir.duration)
			FUNC4(dev, &rawir);
	}
	FUNC3(dev);

out:
	/* Lirc expects this function to take as long as the total duration */
	FUNC6(TASK_INTERRUPTIBLE);
	FUNC5(FUNC7(total_duration));
	return n;
}