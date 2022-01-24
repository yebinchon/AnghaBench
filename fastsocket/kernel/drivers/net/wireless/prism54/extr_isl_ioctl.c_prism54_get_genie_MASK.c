#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct TYPE_3__ {int wpa_ie_len; int /*<<< orphan*/  wpa_ie; } ;
typedef  TYPE_1__ islpci_private ;

/* Variables and functions */
 int E2BIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev,
			     struct iw_request_info *info,
			     struct iw_point *data, char *extra)
{
	islpci_private *priv = FUNC1(ndev);
	int len = priv->wpa_ie_len;

	if (len <= 0) {
		data->length = 0;
		return 0;
	}

	if (data->length < len)
		return -E2BIG;

	data->length = len;
	FUNC0(extra, priv->wpa_ie, len);

	return 0;
}