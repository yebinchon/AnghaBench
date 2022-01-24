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
struct zfcp_adapter {int /*<<< orphan*/  scan_work; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_CLEAR ; 
 int /*<<< orphan*/  ZFCP_SET ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int ZFCP_STATUS_COMMON_RUNNING ; 
 struct zfcp_adapter* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 

__attribute__((used)) static int FUNC5(struct ccw_device *cdev, int clear, char *tag)
{
	struct zfcp_adapter *adapter = FUNC0(&cdev->dev);

	if (!adapter)
		return 0;

	FUNC3(adapter, tag, NULL, clear, ZFCP_CLEAR);
	FUNC3(adapter, tag, NULL,
				       ZFCP_STATUS_COMMON_RUNNING, ZFCP_SET);
	FUNC2(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
				tag, NULL);
	FUNC4(adapter);
	FUNC1(&adapter->scan_work); /* ok to call even if nothing queued */

	return 0;
}