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
struct TYPE_3__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct TYPE_4__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_1__ ap_addr; TYPE_2__ data; } ;
struct net_device {int dummy; } ;
struct atmel_private {scalar_t__ station_state; scalar_t__ bus_type; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 scalar_t__ BUS_TYPE_PCCARD ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GCR ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 int /*<<< orphan*/  STATION_STATE_DOWN ; 
 scalar_t__ STATION_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct atmel_private *priv = FUNC3(dev);

	/* Send event to userspace that we are disassociating */
	if (priv->station_state == STATION_STATE_READY) {
		union iwreq_data wrqu;

		wrqu.data.length = 0;
		wrqu.data.flags = 0;
		wrqu.ap_addr.sa_family = ARPHRD_ETHER;
		FUNC2(wrqu.ap_addr.sa_data, 0, ETH_ALEN);
		FUNC4(priv->dev, SIOCGIWAP, &wrqu, NULL);
	}

	FUNC0(priv, STATION_STATE_DOWN);

	if (priv->bus_type == BUS_TYPE_PCCARD)
		FUNC1(dev, GCR, 0x0060);
	FUNC1(dev, GCR, 0x0040);
	return 0;
}