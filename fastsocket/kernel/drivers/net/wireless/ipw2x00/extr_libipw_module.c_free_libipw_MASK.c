#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;
struct libipw_device {TYPE_1__ wdev; int /*<<< orphan*/  crypt_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct libipw_device*) ; 
 struct libipw_device* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct net_device *dev, int monitor)
{
	struct libipw_device *ieee = FUNC3(dev);

	FUNC1(&ieee->crypt_info);

	FUNC2(ieee);

	/* free cfg80211 resources */
	if (!monitor)
		FUNC4(ieee->wdev.wiphy);

	FUNC0(dev);
}