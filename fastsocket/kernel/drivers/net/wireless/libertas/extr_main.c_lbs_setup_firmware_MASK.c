#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lbs_private {void* txpower_max; void* txpower_min; void* txpower_cur; int /*<<< orphan*/  current_addr; } ;
typedef  void* s16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  LBS_DEB_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct lbs_private*,void**,void**,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*) ; 
 int FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct lbs_private *priv)
{
	int ret = -1;
	s16 curlevel = 0, minlevel = 0, maxlevel = 0;

	FUNC0(LBS_DEB_FW);

	/* Read MAC address from firmware */
	FUNC5(priv->current_addr, 0xff, ETH_ALEN);
	ret = FUNC4(priv);
	if (ret)
		goto done;

	/* Read power levels if available */
	ret = FUNC2(priv, &curlevel, &minlevel, &maxlevel);
	if (ret == 0) {
		priv->txpower_cur = curlevel;
		priv->txpower_min = minlevel;
		priv->txpower_max = maxlevel;
	}

	FUNC3(priv);
done:
	FUNC1(LBS_DEB_FW, "ret %d", ret);
	return ret;
}