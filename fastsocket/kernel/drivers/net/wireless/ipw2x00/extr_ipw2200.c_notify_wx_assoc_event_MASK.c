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
struct TYPE_2__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct ipw_priv {int status; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 int STATUS_ASSOCIATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ipw_priv *priv)
{
	union iwreq_data wrqu;
	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
	if (priv->status & STATUS_ASSOCIATED)
		FUNC0(wrqu.ap_addr.sa_data, priv->bssid, ETH_ALEN);
	else
		FUNC1(wrqu.ap_addr.sa_data, 0, ETH_ALEN);
	FUNC2(priv->net_dev, SIOCGIWAP, &wrqu, NULL);
}