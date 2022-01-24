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
typedef  int /*<<< orphan*/  uint32_t ;
struct lbs_private {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmd_ds_mesh_access {int /*<<< orphan*/ * data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  mesh_access ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_MESH_SET_ANYCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_mesh_access*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_ds_mesh_access*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 
 TYPE_1__* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char * buf, size_t count)
{
	struct lbs_private *priv = FUNC5(dev)->ml_priv;
	struct cmd_ds_mesh_access mesh_access;
	uint32_t datum;
	int ret;

	FUNC2(&mesh_access, 0, sizeof(mesh_access));
	FUNC3(buf, "%x", &datum);
	mesh_access.data[0] = FUNC0(datum);

	ret = FUNC1(priv, CMD_ACT_MESH_SET_ANYCAST, &mesh_access);
	if (ret)
		return ret;

	return FUNC4(buf);
}