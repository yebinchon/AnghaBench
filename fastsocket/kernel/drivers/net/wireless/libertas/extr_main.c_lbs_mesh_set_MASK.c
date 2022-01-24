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
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;
struct lbs_private {TYPE_1__ curbssparams; int /*<<< orphan*/  mesh_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {struct lbs_private* ml_priv; } ;

/* Variables and functions */
 int CMD_ACT_MESH_CONFIG_START ; 
 int CMD_ACT_MESH_CONFIG_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct lbs_private*) ; 
 int FUNC1 (struct lbs_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int*) ; 
 TYPE_2__* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char * buf, size_t count)
{
	struct lbs_private *priv = FUNC4(dev)->ml_priv;
	int enable;
	int ret, action = CMD_ACT_MESH_CONFIG_STOP;

	FUNC3(buf, "%x", &enable);
	enable = !!enable;
	if (enable == !!priv->mesh_dev)
		return count;
	if (enable)
		action = CMD_ACT_MESH_CONFIG_START;
	ret = FUNC1(priv, action, priv->curbssparams.channel);
	if (ret)
		return ret;

	if (enable)
		FUNC0(priv);
	else
		FUNC2(priv);

	return count;
}