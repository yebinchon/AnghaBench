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
struct TYPE_2__ {int fixed; int /*<<< orphan*/  value; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int config; int /*<<< orphan*/  mutex; int /*<<< orphan*/  last_rate; } ;

/* Variables and functions */
 int CFG_FIXED_RATE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct ipw_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			   struct iw_request_info *info,
			   union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC1(dev);
	FUNC2(&priv->mutex);
	wrqu->bitrate.value = priv->last_rate;
	wrqu->bitrate.fixed = (priv->config & CFG_FIXED_RATE) ? 1 : 0;
	FUNC3(&priv->mutex);
	FUNC0("GET Rate -> %d\n", wrqu->bitrate.value);
	return 0;
}