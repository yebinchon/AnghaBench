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
struct TYPE_2__ {scalar_t__ sa_family; int /*<<< orphan*/ * sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; int /*<<< orphan*/  action_mutex; int /*<<< orphan*/  mandatory_bssid_mac; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  CFG_STATIC_BSSID ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int STATUS_INITIALIZED ; 
 int FUNC1 (struct ipw2100_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ipw2100_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
			      struct iw_request_info *info,
			      union iwreq_data *wrqu, char *extra)
{
	struct ipw2100_priv *priv = FUNC2(dev);
	int err = 0;

	static const unsigned char any[] = {
		0xff, 0xff, 0xff, 0xff, 0xff, 0xff
	};
	static const unsigned char off[] = {
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	};

	// sanity checks
	if (wrqu->ap_addr.sa_family != ARPHRD_ETHER)
		return -EINVAL;

	FUNC5(&priv->action_mutex);
	if (!(priv->status & STATUS_INITIALIZED)) {
		err = -EIO;
		goto done;
	}

	if (!FUNC3(any, wrqu->ap_addr.sa_data, ETH_ALEN) ||
	    !FUNC3(off, wrqu->ap_addr.sa_data, ETH_ALEN)) {
		/* we disable mandatory BSSID association */
		FUNC0("exit - disable mandatory BSSID\n");
		priv->config &= ~CFG_STATIC_BSSID;
		err = FUNC1(priv, NULL, 0);
		goto done;
	}

	priv->config |= CFG_STATIC_BSSID;
	FUNC4(priv->mandatory_bssid_mac, wrqu->ap_addr.sa_data, ETH_ALEN);

	err = FUNC1(priv, wrqu->ap_addr.sa_data, 0);

	FUNC0("SET BSSID -> %pM\n", wrqu->ap_addr.sa_data);

      done:
	FUNC6(&priv->action_mutex);
	return err;
}