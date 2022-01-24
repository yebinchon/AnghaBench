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
typedef  int /*<<< orphan*/  u32 ;
struct ehea_port {TYPE_1__* netdev; } ;
struct ehea_adapter {struct ehea_port** port; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EHEA_MAX_PORTS ; 
 int /*<<< orphan*/  EINVAL ; 
 struct ehea_adapter* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct ehea_port* FUNC2 (struct ehea_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ehea_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct ehea_adapter *adapter = FUNC0(dev);
	struct ehea_port *port;
	int i;
	u32 logical_port_id;

	FUNC6(buf, "%d", &logical_port_id);

	port = FUNC2(adapter, logical_port_id);

	if (port) {
		FUNC3("removed %s (logical port id=%d)", port->netdev->name,
			  logical_port_id);

		FUNC5(port);

		for (i = 0; i < EHEA_MAX_PORTS; i++)
			if (adapter->port[i] == port) {
				adapter->port[i] = NULL;
				break;
			}
	} else {
		FUNC1("removing port with logical port id=%d failed. port "
			   "not configured.", logical_port_id);
		return -EINVAL;
	}

	FUNC4(adapter);

	return (ssize_t) count;
}