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
struct efx_rx_queue {int dummy; } ;
struct efx_channel {struct efx_rx_queue rx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_channel*) ; 

__attribute__((used)) static inline struct efx_rx_queue *
FUNC2(struct efx_channel *channel)
{
	FUNC0(!FUNC1(channel));
	return &channel->rx_queue;
}