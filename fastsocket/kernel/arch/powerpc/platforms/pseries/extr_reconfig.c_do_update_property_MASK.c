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
struct property {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int NOTIFY_BAD ; 
 int PSERIES_DRCONF_MEM_ADD ; 
 int PSERIES_DRCONF_MEM_REMOVE ; 
 int FUNC0 (int /*<<< orphan*/ *,int,unsigned char*) ; 
 struct property* FUNC1 (char*,int,unsigned char*,int /*<<< orphan*/ *) ; 
 struct property* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pSeries_reconfig_chain ; 
 char* FUNC3 (char*,char*,char**,int*,unsigned char**) ; 
 char* FUNC4 (char*,size_t,struct device_node**) ; 
 int FUNC5 (struct device_node*,struct property*) ; 
 int FUNC6 (struct device_node*,struct property*,struct property*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(char *buf, size_t bufsize)
{
	struct device_node *np;
	unsigned char *value;
	char *name, *end, *next_prop;
	int rc, length;
	struct property *newprop, *oldprop;
	buf = FUNC4(buf, bufsize, &np);
	end = buf + bufsize;

	if (!np)
		return -ENODEV;

	next_prop = FUNC3(buf, end, &name, &length, &value);
	if (!next_prop)
		return -EINVAL;

	newprop = FUNC1(name, length, value, NULL);
	if (!newprop)
		return -ENOMEM;

	if (!FUNC8(name, "slb-size") || !FUNC8(name, "ibm,slb-size"))
		FUNC7(*(int *)value);

	oldprop = FUNC2(np, name,NULL);
	if (!oldprop) {
		if (FUNC9(name))
			return FUNC5(np, newprop);
		return -ENODEV;
	}

	rc = FUNC6(np, newprop, oldprop);
	if (rc)
		return rc;

	/* For memory under the ibm,dynamic-reconfiguration-memory node
	 * of the device tree, adding and removing memory is just an update
	 * to the ibm,dynamic-memory property instead of adding/removing a
	 * memory node in the device tree.  For these cases we still need to
	 * involve the notifier chain.
	 */
	if (!FUNC8(name, "ibm,dynamic-memory")) {
		int action;

		next_prop = FUNC3(next_prop, end, &name,
						&length, &value);
		if (!next_prop)
			return -EINVAL;

		if (!FUNC8(name, "add"))
			action = PSERIES_DRCONF_MEM_ADD;
		else
			action = PSERIES_DRCONF_MEM_REMOVE;

		rc = FUNC0(&pSeries_reconfig_chain,
						  action, value);
		if (rc == NOTIFY_BAD) {
			rc = FUNC6(np, oldprop, newprop);
			return -ENOMEM;
		}
	}

	return 0;
}