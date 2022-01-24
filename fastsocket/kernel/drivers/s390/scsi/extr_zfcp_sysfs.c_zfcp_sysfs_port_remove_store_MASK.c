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
typedef  int /*<<< orphan*/  u64 ;
struct zfcp_port {int /*<<< orphan*/  list; int /*<<< orphan*/  status; int /*<<< orphan*/  refcount; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  config_mutex; int /*<<< orphan*/  config_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFCP_STATUS_COMMON_REMOVE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 struct zfcp_adapter* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  port_remove_lh ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ zfcp_data ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_port*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_adapter*) ; 
 struct zfcp_port* FUNC12 (struct zfcp_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC14 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC15 (struct zfcp_port*) ; 

__attribute__((used)) static ssize_t FUNC16(struct device *dev,
					    struct device_attribute *attr,
					    const char *buf, size_t count)
{
	struct zfcp_adapter *adapter = FUNC3(dev);
	struct zfcp_port *port;
	u64 wwpn;
	int retval = 0;
	FUNC0(port_remove_lh);

	FUNC5(&zfcp_data.config_mutex);
	if (FUNC1(&adapter->status) & ZFCP_STATUS_COMMON_REMOVE) {
		retval = -EBUSY;
		goto out;
	}

	if (FUNC7(buf, 0, (unsigned long long *) &wwpn)) {
		retval = -EINVAL;
		goto out;
	}

	FUNC8(&zfcp_data.config_lock);
	port = FUNC12(adapter, wwpn);
	if (port && (FUNC1(&port->refcount) == 0)) {
		FUNC14(port);
		FUNC2(ZFCP_STATUS_COMMON_REMOVE, &port->status);
		FUNC4(&port->list, &port_remove_lh);
	} else
		port = NULL;
	FUNC9(&zfcp_data.config_lock);

	if (!port) {
		retval = -ENXIO;
		goto out;
	}

	FUNC10(port, 0, "syprs_1", NULL);
	FUNC11(adapter);
	FUNC15(port);
	FUNC13(port);
 out:
	FUNC6(&zfcp_data.config_mutex);
	return retval ? retval : (ssize_t) count;
}