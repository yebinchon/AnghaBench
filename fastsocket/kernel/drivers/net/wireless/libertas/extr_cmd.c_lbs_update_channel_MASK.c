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
struct TYPE_2__ {int channel; } ;
struct lbs_private {TYPE_1__ curbssparams; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct lbs_private*) ; 

int FUNC3(struct lbs_private *priv)
{
	int ret;

	/* the channel in f/w could be out of sync; get the current channel */
	FUNC0(LBS_DEB_ASSOC);

	ret = FUNC2(priv);
	if (ret > 0) {
		priv->curbssparams.channel = ret;
		ret = 0;
	}
	FUNC1(LBS_DEB_ASSOC, "ret %d", ret);
	return ret;
}