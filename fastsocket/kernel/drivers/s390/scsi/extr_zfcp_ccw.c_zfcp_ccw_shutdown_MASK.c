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
struct zfcp_adapter {int dummy; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  config_mutex; } ;

/* Variables and functions */
 struct zfcp_adapter* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ zfcp_data ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_adapter*) ; 

__attribute__((used)) static void FUNC6(struct ccw_device *cdev)
{
	struct zfcp_adapter *adapter;

	FUNC1(&zfcp_data.config_mutex);
	adapter = FUNC0(&cdev->dev);
	if (!adapter)
		goto out;

	FUNC3(adapter, 0, "ccshut1", NULL);
	FUNC5(adapter);
	FUNC4(adapter);
out:
	FUNC2(&zfcp_data.config_mutex);
}