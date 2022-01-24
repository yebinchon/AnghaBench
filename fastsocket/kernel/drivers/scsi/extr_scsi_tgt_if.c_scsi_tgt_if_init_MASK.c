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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_ring ; 
 int /*<<< orphan*/  tgt_miscdev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_ring ; 

int FUNC3(void)
{
	int err;

	err = FUNC2(&tx_ring);
	if (err)
		return err;

	err = FUNC2(&rx_ring);
	if (err)
		goto free_tx_ring;

	err = FUNC0(&tgt_miscdev);
	if (err)
		goto free_rx_ring;

	return 0;
free_rx_ring:
	FUNC1(&rx_ring);
free_tx_ring:
	FUNC1(&tx_ring);

	return err;
}