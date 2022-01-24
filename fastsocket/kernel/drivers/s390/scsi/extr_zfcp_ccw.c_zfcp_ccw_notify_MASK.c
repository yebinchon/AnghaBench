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
struct zfcp_adapter {TYPE_1__* ccw_device; int /*<<< orphan*/  dbf; int /*<<< orphan*/  status; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  CIO_BOXED 131 
#define  CIO_GONE 130 
#define  CIO_NO_PATH 129 
#define  CIO_OPER 128 
 int /*<<< orphan*/  ZFCP_SET ; 
 int ZFCP_STATUS_ADAPTER_SUSPENDED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_RUNNING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct zfcp_adapter* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_adapter*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ccw_device *ccw_device, int event)
{
	struct zfcp_adapter *adapter = FUNC1(&ccw_device->dev);

	switch (event) {
	case CIO_GONE:
		if (FUNC0(&adapter->status) &
		    ZFCP_STATUS_ADAPTER_SUSPENDED) { /* notification ignore */
			FUNC4(adapter->dbf, "nigo");
			break;
		}
		FUNC3(&adapter->ccw_device->dev,
			 "The FCP device has been detached\n");
		FUNC6(adapter, 0, "ccnoti1", NULL);
		break;
	case CIO_NO_PATH:
		FUNC3(&adapter->ccw_device->dev,
			 "The CHPID for the FCP device is offline\n");
		FUNC6(adapter, 0, "ccnoti2", NULL);
		break;
	case CIO_OPER:
		if (FUNC0(&adapter->status) &
		    ZFCP_STATUS_ADAPTER_SUSPENDED) { /* notification ignore */
			FUNC4(adapter->dbf, "niop");
			break;
		}
		FUNC2(&adapter->ccw_device->dev,
			 "The FCP device is operational again\n");
		FUNC7(adapter, "ccnoti3", NULL,
					       ZFCP_STATUS_COMMON_RUNNING,
					       ZFCP_SET);
		FUNC5(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
					"ccnoti4", NULL);
		break;
	case CIO_BOXED:
		FUNC3(&adapter->ccw_device->dev, "The FCP device "
			 "did not respond within the specified time\n");
		FUNC6(adapter, 0, "ccnoti5", NULL);
		break;
	}
	return 1;
}