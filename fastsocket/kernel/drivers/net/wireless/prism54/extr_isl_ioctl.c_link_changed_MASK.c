#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union iwreq_data {int dummy; } iwreq_data ;
typedef  scalar_t__ u32 ;
struct sockaddr {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ iw_mode; } ;
typedef  TYPE_1__ islpci_private ;

/* Variables and functions */
 scalar_t__ IW_MODE_INFRA ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 TYPE_1__* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct net_device *ndev, u32 bitrate)
{
	islpci_private *priv = FUNC0(ndev);

	if (bitrate) {
		FUNC2(ndev);
		if (priv->iw_mode == IW_MODE_INFRA) {
			union iwreq_data uwrq;
			FUNC3(ndev, NULL, (struct sockaddr *) &uwrq,
					NULL);
			FUNC5(ndev, SIOCGIWAP, &uwrq, NULL);
		} else
			FUNC4(FUNC0(ndev),
					  "Link established");
	} else {
		FUNC1(ndev);
		FUNC4(FUNC0(ndev), "Link lost");
	}
}