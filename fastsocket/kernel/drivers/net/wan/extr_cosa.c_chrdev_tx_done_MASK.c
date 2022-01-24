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
struct channel_data {int tx_status; int /*<<< orphan*/  txwaitq; int /*<<< orphan*/  wsem; int /*<<< orphan*/  txbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct channel_data *chan, int size)
{
	if (chan->tx_status) { /* Writer was interrupted */
		FUNC0(chan->txbuf);
		FUNC1(&chan->wsem);
	}
	chan->tx_status = 1;
	FUNC2(&chan->txwaitq);
	return 1;
}