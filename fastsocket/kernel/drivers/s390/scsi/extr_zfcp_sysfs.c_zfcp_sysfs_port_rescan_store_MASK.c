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
struct zfcp_adapter {int /*<<< orphan*/  scan_work; int /*<<< orphan*/  work_queue; int /*<<< orphan*/  status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int ZFCP_STATUS_COMMON_REMOVE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct zfcp_adapter* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					    struct device_attribute *attr,
					    const char *buf, size_t count)
{
	struct zfcp_adapter *adapter = FUNC1(dev);

	if (FUNC0(&adapter->status) & ZFCP_STATUS_COMMON_REMOVE)
		return -EBUSY;

	/* sync the user-space- with the kernel-invocation of scan_work */
	FUNC3(adapter->work_queue, &adapter->scan_work);
	FUNC2(&adapter->scan_work);

	return (ssize_t) count;
}