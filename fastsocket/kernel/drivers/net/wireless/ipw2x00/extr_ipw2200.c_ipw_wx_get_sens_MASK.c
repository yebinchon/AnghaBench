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
struct TYPE_3__ {int /*<<< orphan*/  value; scalar_t__ disabled; } ;
struct TYPE_4__ {int fixed; int /*<<< orphan*/  value; } ;
union iwreq_data {TYPE_1__ power; TYPE_2__ sens; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  roaming_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 struct ipw_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC1(dev);
	FUNC2(&priv->mutex);
	wrqu->sens.fixed = 1;
	wrqu->sens.value = priv->roaming_threshold;
	FUNC3(&priv->mutex);

	FUNC0("GET roaming threshold -> %s %d\n",
		     wrqu->power.disabled ? "OFF" : "ON", wrqu->power.value);

	return 0;
}