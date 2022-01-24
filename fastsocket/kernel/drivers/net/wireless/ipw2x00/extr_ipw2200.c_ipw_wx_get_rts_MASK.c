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
struct TYPE_2__ {int disabled; int /*<<< orphan*/  value; scalar_t__ fixed; } ;
union iwreq_data {TYPE_1__ rts; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  rts_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_RTS_THRESHOLD ; 
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
	wrqu->rts.value = priv->rts_threshold;
	wrqu->rts.fixed = 0;	/* no auto select */
	wrqu->rts.disabled = (wrqu->rts.value == DEFAULT_RTS_THRESHOLD);
	FUNC3(&priv->mutex);
	FUNC0("GET RTS Threshold -> %d\n", wrqu->rts.value);
	return 0;
}