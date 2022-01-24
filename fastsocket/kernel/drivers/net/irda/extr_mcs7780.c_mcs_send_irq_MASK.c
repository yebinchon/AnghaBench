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
struct urb {struct mcs_cb* context; } ;
struct net_device {int dummy; } ;
struct mcs_cb {int /*<<< orphan*/  work; int /*<<< orphan*/  new_speed; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct urb *urb)
{
	struct mcs_cb *mcs = urb->context;
	struct net_device *ndev = mcs->netdev;

	if (FUNC2(mcs->new_speed))
		FUNC1(&mcs->work);
	else
		FUNC0(ndev);
}