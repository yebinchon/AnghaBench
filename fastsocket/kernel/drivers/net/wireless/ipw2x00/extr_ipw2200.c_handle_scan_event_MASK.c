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
struct TYPE_2__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct ipw_priv {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  scan_event; scalar_t__ user_requested_scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGIWSCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ipw_priv *priv)
{
	/* Only userspace-requested scan completion events go out immediately */
	if (!priv->user_requested_scan) {
		if (!FUNC1(&priv->scan_event))
			FUNC4(&priv->scan_event,
					      FUNC3(FUNC2(4000)));
	} else {
		union iwreq_data wrqu;

		priv->user_requested_scan = 0;
		FUNC0(&priv->scan_event);

		wrqu.data.length = 0;
		wrqu.data.flags = 0;
		FUNC5(priv->net_dev, SIOCGIWSCAN, &wrqu, NULL);
	}
}