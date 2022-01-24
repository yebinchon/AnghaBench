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
struct rx_ring_info {int rx_channel; } ;
struct niu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RX_DMA_ENT_MSK_ALL ; 
 int /*<<< orphan*/  FUNC2 (struct niu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct niu *np, struct rx_ring_info *rp)
{
	int channel = rp->rx_channel;

	(void) FUNC3(np, channel);
	FUNC4(FUNC1(channel), RX_DMA_ENT_MSK_ALL);
	FUNC4(FUNC0(channel), 0);
	(void) FUNC2(np, channel, 0);
}