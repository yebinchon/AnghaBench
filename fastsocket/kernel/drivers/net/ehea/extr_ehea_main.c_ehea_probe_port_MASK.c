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
struct device_node {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EHEA_MAX_PORTS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 struct ehea_adapter* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct ehea_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct device_node* FUNC3 (struct ehea_adapter*,int /*<<< orphan*/ ) ; 
 struct ehea_port* FUNC4 (struct ehea_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ehea_adapter*) ; 
 struct ehea_port* FUNC7 (struct ehea_adapter*,int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			       struct device_attribute *attr,
			       const char *buf, size_t count)
{
	struct ehea_adapter *adapter = FUNC0(dev);
	struct ehea_port *port;
	struct device_node *eth_dn = NULL;
	int i;

	u32 logical_port_id;

	FUNC9(buf, "%d", &logical_port_id);

	port = FUNC4(adapter, logical_port_id);

	if (port) {
		FUNC5("adding port with logical port id=%d failed. port "
			  "already configured as %s.", logical_port_id,
			  port->netdev->name);
		return -EINVAL;
	}

	eth_dn = FUNC3(adapter, logical_port_id);

	if (!eth_dn) {
		FUNC5("no logical port with id %d found", logical_port_id);
		return -EINVAL;
	}

	if (FUNC1(adapter)) {
		FUNC2("creating MR failed");
		return -EIO;
	}

	port = FUNC7(adapter, logical_port_id, eth_dn);

	FUNC8(eth_dn);

	if (port) {
		for (i = 0; i < EHEA_MAX_PORTS; i++)
			if (!adapter->port[i]) {
				adapter->port[i] = port;
				break;
			}

		FUNC5("added %s (logical port id=%d)", port->netdev->name,
			  logical_port_id);
	} else {
		FUNC6(adapter);
		return -EIO;
	}

	return (ssize_t) count;
}