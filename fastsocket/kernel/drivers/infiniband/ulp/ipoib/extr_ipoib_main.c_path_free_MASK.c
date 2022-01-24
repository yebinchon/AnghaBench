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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  raw; } ;
struct TYPE_4__ {TYPE_1__ dgid; } ;
struct ipoib_path {scalar_t__ ah; TYPE_2__ pathrec; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, struct ipoib_path *path)
{
	struct sk_buff *skb;

	while ((skb = FUNC0(&path->queue)))
		FUNC1(skb);

	FUNC2(FUNC6(dev), "path_free\n");

	/* remove all neigh connected to this path */
	FUNC3(dev, path->pathrec.dgid.raw);

	if (path->ah)
		FUNC4(path->ah);

	FUNC5(path);
}