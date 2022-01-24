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
struct TYPE_4__ {int disabled; int /*<<< orphan*/  value; scalar_t__ fixed; } ;
union iwreq_data {TYPE_2__ frag; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int /*<<< orphan*/  mutex; TYPE_1__* ieee; } ;
struct TYPE_3__ {int /*<<< orphan*/  fts; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_FTS ; 
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
	wrqu->frag.value = priv->ieee->fts;
	wrqu->frag.fixed = 0;	/* no auto select */
	wrqu->frag.disabled = (wrqu->frag.value == DEFAULT_FTS);
	FUNC3(&priv->mutex);
	FUNC0("GET Frag Threshold -> %d\n", wrqu->frag.value);

	return 0;
}