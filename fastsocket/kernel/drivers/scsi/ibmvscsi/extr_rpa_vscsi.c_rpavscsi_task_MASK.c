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
struct viosrp_crq {int valid; } ;
struct vio_dev {int dummy; } ;
struct ibmvscsi_host_data {int /*<<< orphan*/  queue; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct viosrp_crq* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct viosrp_crq*,struct ibmvscsi_host_data*) ; 
 struct vio_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct vio_dev*) ; 

__attribute__((used)) static void FUNC5(void *data)
{
	struct ibmvscsi_host_data *hostdata = (struct ibmvscsi_host_data *)data;
	struct vio_dev *vdev = FUNC2(hostdata->dev);
	struct viosrp_crq *crq;
	int done = 0;

	while (!done) {
		/* Pull all the valid messages off the CRQ */
		while ((crq = FUNC0(&hostdata->queue)) != NULL) {
			FUNC1(crq, hostdata);
			crq->valid = 0x00;
		}

		FUNC4(vdev);
		if ((crq = FUNC0(&hostdata->queue)) != NULL) {
			FUNC3(vdev);
			FUNC1(crq, hostdata);
			crq->valid = 0x00;
		} else {
			done = 1;
		}
	}
}