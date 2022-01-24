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
struct efx_rx_queue {scalar_t__ enabled; } ;
struct efx_channel {int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 struct efx_rx_queue* FUNC0 (struct efx_channel*) ; 
 scalar_t__ FUNC1 (struct efx_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_rx_queue*) ; 
 int FUNC3 (struct efx_channel*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_channel*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct efx_channel *channel, int budget)
{
	int spent;

	if (FUNC5(!channel->enabled))
		return 0;

	spent = FUNC3(channel, budget);
	if (spent && FUNC1(channel)) {
		struct efx_rx_queue *rx_queue =
			FUNC0(channel);

		FUNC4(channel);
		if (rx_queue->enabled)
			FUNC2(rx_queue);
	}

	return spent;
}