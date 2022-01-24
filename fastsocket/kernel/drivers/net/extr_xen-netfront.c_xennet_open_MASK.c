#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rsp_cons; TYPE_1__* sring; } ;
struct netfront_info {int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  napi; TYPE_2__ rx; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ rsp_event; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct netfront_info* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct netfront_info *np = FUNC3(dev);

	FUNC1(&np->napi);

	FUNC6(&np->rx_lock);
	if (FUNC4(dev)) {
		FUNC8(dev);
		np->rx.sring->rsp_event = np->rx.rsp_cons + 1;
		if (FUNC0(&np->rx))
			FUNC2(&np->napi);
	}
	FUNC7(&np->rx_lock);

	FUNC5(dev);

	return 0;
}