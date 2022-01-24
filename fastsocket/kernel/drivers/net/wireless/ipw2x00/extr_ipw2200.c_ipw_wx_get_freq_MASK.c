#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int e; int m; } ;
union iwreq_data {TYPE_4__ freq; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int config; int status; int /*<<< orphan*/  channel; int /*<<< orphan*/  mutex; TYPE_5__* ieee; } ;
struct TYPE_9__ {TYPE_2__* bg; TYPE_1__* a; } ;
struct TYPE_11__ {TYPE_3__ geo; } ;
struct TYPE_8__ {int freq; } ;
struct TYPE_7__ {int freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CFG_STATIC_CHANNEL ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
#define  LIBIPW_24GHZ_BAND 129 
#define  LIBIPW_52GHZ_BAND 128 
 int STATUS_ASSOCIATED ; 
 int STATUS_ASSOCIATING ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 struct ipw_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
			   struct iw_request_info *info,
			   union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC5(dev);

	wrqu->freq.e = 0;

	/* If we are associated, trying to associate, or have a statically
	 * configured CHANNEL then return that; otherwise return ANY */
	FUNC6(&priv->mutex);
	if (priv->config & CFG_STATIC_CHANNEL ||
	    priv->status & (STATUS_ASSOCIATING | STATUS_ASSOCIATED)) {
		int i;

		i = FUNC3(priv->ieee, priv->channel);
		FUNC1(i == -1);
		wrqu->freq.e = 1;

		switch (FUNC4(priv->ieee, priv->channel)) {
		case LIBIPW_52GHZ_BAND:
			wrqu->freq.m = priv->ieee->geo.a[i].freq * 100000;
			break;

		case LIBIPW_24GHZ_BAND:
			wrqu->freq.m = priv->ieee->geo.bg[i].freq * 100000;
			break;

		default:
			FUNC0();
		}
	} else
		wrqu->freq.m = 0;

	FUNC7(&priv->mutex);
	FUNC2("GET Freq/Channel -> %d\n", priv->channel);
	return 0;
}