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
struct net_device {int flags; } ;
struct gelic_card {int /*<<< orphan*/  tx_timeout_task_counter; int /*<<< orphan*/  tx_timeout_task; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gelic_card* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct net_device *netdev)
{
	struct gelic_card *card;

	card = FUNC2(netdev);
	FUNC1(&card->tx_timeout_task_counter);
	if (netdev->flags & IFF_UP)
		FUNC3(&card->tx_timeout_task);
	else
		FUNC0(&card->tx_timeout_task_counter);
}