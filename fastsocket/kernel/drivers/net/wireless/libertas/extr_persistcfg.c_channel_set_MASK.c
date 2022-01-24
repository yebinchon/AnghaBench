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
typedef  int /*<<< orphan*/  uint16_t ;
struct lbs_private {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmd_ds_mesh_config {void* length; int /*<<< orphan*/ * data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  cmd ;
typedef  void* __le16 ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_MESH_CONFIG_SET ; 
 int /*<<< orphan*/  CMD_TYPE_MESH_SET_DEF_CHANNEL ; 
 int EINVAL ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,struct cmd_ds_mesh_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_ds_mesh_config*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,char*,int*) ; 
 int FUNC4 (char const*) ; 
 TYPE_1__* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct lbs_private *priv = FUNC5(dev)->ml_priv;
	struct cmd_ds_mesh_config cmd;
	uint32_t datum;
	int ret;

	FUNC2(&cmd, 0, sizeof(cmd));
	ret = FUNC3(buf, "%d", &datum);
	if (ret != 1 || datum < 1 || datum > 11)
		return -EINVAL;

	*((__le16 *)&cmd.data[0]) = FUNC0(datum);
	cmd.length = FUNC0(sizeof(uint16_t));
	ret = FUNC1(priv, &cmd, CMD_ACT_MESH_CONFIG_SET,
				   CMD_TYPE_MESH_SET_DEF_CHANNEL);
	if (ret)
		return ret;

	return FUNC4(buf);
}