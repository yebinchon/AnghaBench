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
typedef  int u32 ;
struct zfcp_adapter {int dummy; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  busid ;

/* Variables and functions */
 struct zfcp_adapter* FUNC0 (int /*<<< orphan*/ *) ; 
 struct ccw_device* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  zfcp_ccw_driver ; 

__attribute__((used)) static struct zfcp_adapter *FUNC5(u32 devno)
{
	char busid[9];
	struct ccw_device *ccwdev;
	struct zfcp_adapter *adapter = NULL;

	FUNC3(busid, sizeof(busid), "0.0.%04x", devno);
	ccwdev = FUNC1(&zfcp_ccw_driver, busid);
	if (!ccwdev)
		goto out;

	adapter = FUNC0(&ccwdev->dev);
	if (!adapter)
		goto out_put;

	FUNC4(adapter);
out_put:
	FUNC2(&ccwdev->dev);
out:
	return adapter;
}