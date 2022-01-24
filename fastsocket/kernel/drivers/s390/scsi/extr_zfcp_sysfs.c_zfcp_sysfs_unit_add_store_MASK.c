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
typedef  int /*<<< orphan*/  u64 ;
struct zfcp_unit {TYPE_1__* port; } ;
struct zfcp_port {int /*<<< orphan*/  status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  config_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (struct zfcp_unit*) ; 
 int ZFCP_STATUS_COMMON_REMOVE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct zfcp_port* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ,unsigned long long*) ; 
 TYPE_2__ zfcp_data ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_unit*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_unit*) ; 
 struct zfcp_unit* FUNC9 (struct zfcp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_unit*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t count)
{
	struct zfcp_port *port = FUNC2(dev);
	struct zfcp_unit *unit;
	u64 fcp_lun;

	FUNC3(&zfcp_data.config_mutex);
	if (FUNC1(&port->status) & ZFCP_STATUS_COMMON_REMOVE) {
		FUNC4(&zfcp_data.config_mutex);
		return -EBUSY;
	}

	if (FUNC5(buf, 0, (unsigned long long *) &fcp_lun)) {
		FUNC4(&zfcp_data.config_mutex);
		return -EINVAL;
	}

	unit = FUNC9(port, fcp_lun);
	FUNC4(&zfcp_data.config_mutex);
	if (FUNC0(unit))
		return -EINVAL;

	FUNC6(unit, 0, "syuas_1", NULL);
	FUNC7(unit->port->adapter);
	FUNC8(unit);
	FUNC10(unit);

	return (ssize_t) count;
}