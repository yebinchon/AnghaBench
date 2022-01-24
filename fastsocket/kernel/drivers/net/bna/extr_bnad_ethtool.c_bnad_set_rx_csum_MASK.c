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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct bnad {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  rx_csum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev, u32 rx_csum)
{
	struct bnad *bnad = FUNC2(netdev);

	FUNC0(&bnad->conf_mutex);
	bnad->rx_csum = rx_csum;
	FUNC1(&bnad->conf_mutex);
	return 0;
}