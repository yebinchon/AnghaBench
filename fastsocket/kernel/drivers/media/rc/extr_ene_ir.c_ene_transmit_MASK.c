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
typedef  int u32 ;
struct rc_dev {struct ene_device* priv; } ;
struct ene_device {int* tx_buffer; int tx_len; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  tx_complete; scalar_t__ tx_sample_pulse; scalar_t__ tx_sample; scalar_t__ tx_done; scalar_t__ tx_reg; scalar_t__ tx_pos; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct rc_dev *rdev, int *buf, u32 n)
{
	struct ene_device *dev = rdev->priv;
	unsigned long flags;

	dev->tx_buffer = buf;
	dev->tx_len = n / sizeof(int);
	dev->tx_pos = 0;
	dev->tx_reg = 0;
	dev->tx_done = 0;
	dev->tx_sample = 0;
	dev->tx_sample_pulse = 0;

	FUNC0("TX: %d samples", dev->tx_len);

	FUNC4(&dev->hw_lock, flags);

	FUNC2(dev);

	/* Transmit first two samples */
	FUNC3(dev);
	FUNC3(dev);

	FUNC5(&dev->hw_lock, flags);

	if (FUNC6(&dev->tx_complete, 2 * HZ) == 0) {
		FUNC0("TX: timeout");
		FUNC4(&dev->hw_lock, flags);
		FUNC1(dev);
		FUNC5(&dev->hw_lock, flags);
	} else
		FUNC0("TX: done");
	return n;
}