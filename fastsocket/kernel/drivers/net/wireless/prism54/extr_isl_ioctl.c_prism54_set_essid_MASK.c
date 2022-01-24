#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct obj_ssid {int length; int /*<<< orphan*/  octets; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; scalar_t__ flags; } ;
struct TYPE_5__ {scalar_t__ iw_mode; } ;
typedef  TYPE_1__ islpci_private ;

/* Variables and functions */
 int /*<<< orphan*/  DOT11_OID_SSID ; 
 int E2BIG ; 
 scalar_t__ IW_MODE_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct obj_ssid*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct obj_ssid*) ; 
 TYPE_1__* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *ndev, struct iw_request_info *info,
		  struct iw_point *dwrq, char *extra)
{
	islpci_private *priv = FUNC4(ndev);
	struct obj_ssid essid;

	FUNC1(essid.octets, 0, 33);

	/* Check if we were asked for `any' */
	if (dwrq->flags && dwrq->length) {
		if (dwrq->length > 32)
			return -E2BIG;
		essid.length = dwrq->length;
		FUNC0(essid.octets, extra, dwrq->length);
	} else
		essid.length = 0;

	if (priv->iw_mode != IW_MODE_MONITOR)
		return FUNC3(priv, DOT11_OID_SSID, 0, &essid);

	/* If in monitor mode, just save to mib */
	FUNC2(priv, DOT11_OID_SSID, &essid);
	return 0;

}