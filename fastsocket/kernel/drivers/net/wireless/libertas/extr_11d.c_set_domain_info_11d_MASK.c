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
struct lbs_private {int /*<<< orphan*/  enable11d; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11D_DOMAIN_INFO ; 
 int /*<<< orphan*/  CMD_ACT_SET ; 
 int /*<<< orphan*/  CMD_OPTION_WAITFORRSP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct lbs_private *priv)
{
	int ret;

	if (!priv->enable11d) {
		FUNC0("dnld domain Info with 11d disabled\n");
		return 0;
	}

	ret = FUNC1(priv, CMD_802_11D_DOMAIN_INFO,
				    CMD_ACT_SET,
				    CMD_OPTION_WAITFORRSP, 0, NULL);
	if (ret)
		FUNC0("fail to dnld domain info\n");

	return ret;
}