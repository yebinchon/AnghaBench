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
struct net_device {int dummy; } ;
struct ipoib_ah {struct ib_ah* ah; int /*<<< orphan*/  ref; scalar_t__ last_send; struct net_device* dev; } ;
struct ib_pd {int dummy; } ;
struct ib_ah_attr {int dummy; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ipoib_ah* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct ib_ah*) ; 
 struct ib_ah* FUNC2 (struct ib_pd*,struct ib_ah_attr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_ah*) ; 
 struct ipoib_ah* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

struct ipoib_ah *FUNC8(struct net_device *dev,
				 struct ib_pd *pd, struct ib_ah_attr *attr)
{
	struct ipoib_ah *ah;
	struct ib_ah *vah;

	ah = FUNC5(sizeof *ah, GFP_KERNEL);
	if (!ah)
		return FUNC0(-ENOMEM);

	ah->dev       = dev;
	ah->last_send = 0;
	FUNC6(&ah->ref);

	vah = FUNC2(pd, attr);
	if (FUNC1(vah)) {
		FUNC4(ah);
		ah = (struct ipoib_ah *)vah;
	} else {
		ah->ah = vah;
		FUNC3(FUNC7(dev), "Created ah %p\n", ah->ah);
	}

	return ah;
}