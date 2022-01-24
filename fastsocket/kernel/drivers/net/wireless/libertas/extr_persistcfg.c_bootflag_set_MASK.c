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
typedef  int uint32_t ;
struct lbs_private {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmd_ds_mesh_config {int /*<<< orphan*/  length; int /*<<< orphan*/ * data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_MESH_CONFIG_SET ; 
 int /*<<< orphan*/  CMD_TYPE_MESH_SET_BOOTFLAG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct lbs_private*,struct cmd_ds_mesh_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_ds_mesh_config*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,char*,int*) ; 
 int FUNC5 (char const*) ; 
 TYPE_1__* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct lbs_private *priv = FUNC6(dev)->ml_priv;
	struct cmd_ds_mesh_config cmd;
	uint32_t datum;
	int ret;

	FUNC3(&cmd, 0, sizeof(cmd));
	ret = FUNC4(buf, "%d", &datum);
	if ((ret != 1) || (datum > 1))
		return -EINVAL;

	*((__le32 *)&cmd.data[0]) = FUNC1(!!datum);
	cmd.length = FUNC0(sizeof(uint32_t));
	ret = FUNC2(priv, &cmd, CMD_ACT_MESH_CONFIG_SET,
				   CMD_TYPE_MESH_SET_BOOTFLAG);
	if (ret)
		return ret;

	return FUNC5(buf);
}