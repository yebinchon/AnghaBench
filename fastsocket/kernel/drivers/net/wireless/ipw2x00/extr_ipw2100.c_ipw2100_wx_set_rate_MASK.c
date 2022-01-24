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
struct TYPE_2__ {int value; int /*<<< orphan*/  fixed; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; int /*<<< orphan*/  action_mutex; } ;

/* Variables and functions */
 int DEFAULT_TX_RATES ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int STATUS_INITIALIZED ; 
 int TX_RATE_11_MBIT ; 
 int TX_RATE_1_MBIT ; 
 int TX_RATE_2_MBIT ; 
 int TX_RATE_5_5_MBIT ; 
 int FUNC1 (struct ipw2100_priv*,int,int /*<<< orphan*/ ) ; 
 struct ipw2100_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	struct ipw2100_priv *priv = FUNC2(dev);
	u32 target_rate = wrqu->bitrate.value;
	u32 rate;
	int err = 0;

	FUNC3(&priv->action_mutex);
	if (!(priv->status & STATUS_INITIALIZED)) {
		err = -EIO;
		goto done;
	}

	rate = 0;

	if (target_rate == 1000000 ||
	    (!wrqu->bitrate.fixed && target_rate > 1000000))
		rate |= TX_RATE_1_MBIT;
	if (target_rate == 2000000 ||
	    (!wrqu->bitrate.fixed && target_rate > 2000000))
		rate |= TX_RATE_2_MBIT;
	if (target_rate == 5500000 ||
	    (!wrqu->bitrate.fixed && target_rate > 5500000))
		rate |= TX_RATE_5_5_MBIT;
	if (target_rate == 11000000 ||
	    (!wrqu->bitrate.fixed && target_rate > 11000000))
		rate |= TX_RATE_11_MBIT;
	if (rate == 0)
		rate = DEFAULT_TX_RATES;

	err = FUNC1(priv, rate, 0);

	FUNC0("SET Rate -> %04X\n", rate);
      done:
	FUNC4(&priv->action_mutex);
	return err;
}