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
struct zfcp_adapter {int /*<<< orphan*/  scan_work; scalar_t__ req_no; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  config_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZFCP_SET ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct zfcp_adapter* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ccw_device*) ; 
 TYPE_1__ zfcp_data ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_adapter*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_adapter*) ; 

__attribute__((used)) static int FUNC12(struct ccw_device *ccw_device)
{
	struct zfcp_adapter *adapter;
	int ret = 0;

	FUNC4(&zfcp_data.config_mutex);
	adapter = FUNC2(&ccw_device->dev);

	if (!adapter) {
		ret = FUNC6(ccw_device);
		if (ret) {
			FUNC1(&ccw_device->dev,
				"Setting up data structures for the "
				"FCP adapter failed\n");
			goto out;
		}
		adapter = FUNC2(&ccw_device->dev);
	}

	/* initialize request counter */
	FUNC0(!FUNC11(adapter));
	adapter->req_no = 0;

	FUNC8(adapter, "ccsonl1", NULL,
				       ZFCP_STATUS_COMMON_RUNNING, ZFCP_SET);
	FUNC7(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
				"ccsonl2", NULL);
	FUNC9(adapter);
	/* scan for remote ports
	   either at the end of any successful adapter recovery
	   or only after the adapter recovery for setting a device online */
	FUNC10(adapter);
out:
	FUNC5(&zfcp_data.config_mutex);
	if (!ret)
		FUNC3(&adapter->scan_work); /* ok even if nothing queued */
	return ret;
}