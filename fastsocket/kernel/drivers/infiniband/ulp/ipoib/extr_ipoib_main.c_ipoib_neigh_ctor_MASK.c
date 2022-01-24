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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ipoib_neigh {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  list; int /*<<< orphan*/  queue; int /*<<< orphan*/  daddr; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_neigh*,int /*<<< orphan*/ *) ; 
 struct ipoib_neigh* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ipoib_neigh *FUNC6(u8 *daddr,
				      struct net_device *dev)
{
	struct ipoib_neigh *neigh;

	neigh = FUNC3(sizeof *neigh, GFP_ATOMIC);
	if (!neigh)
		return NULL;

	neigh->dev = dev;
	FUNC4(&neigh->daddr, daddr, sizeof(neigh->daddr));
	FUNC5(&neigh->queue);
	FUNC0(&neigh->list);
	FUNC2(neigh, NULL);
	/* one ref on behalf of the caller */
	FUNC1(&neigh->refcnt, 1);

	return neigh;
}