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
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct ibmvscsi_host_data {int /*<<< orphan*/  host; int /*<<< orphan*/  work_thread; int /*<<< orphan*/  queue; int /*<<< orphan*/  pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release_crq_queue ) (int /*<<< orphan*/ *,struct ibmvscsi_host_data*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct ibmvscsi_host_data* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ibmvscsi_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_events ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ibmvscsi_host_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ibmvscsi_host_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvscsi_host_data*) ; 

__attribute__((used)) static int FUNC8(struct vio_dev *vdev)
{
	struct ibmvscsi_host_data *hostdata = FUNC0(&vdev->dev);
	FUNC7(hostdata);
	FUNC2(&hostdata->pool, hostdata);
	ibmvscsi_ops->release_crq_queue(&hostdata->queue, hostdata,
					max_events);

	FUNC1(hostdata->work_thread);
	FUNC5(hostdata->host);
	FUNC4(hostdata->host);
	FUNC3(hostdata->host);

	return 0;
}