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
struct ibmvscsi_host_data {int /*<<< orphan*/  host; int /*<<< orphan*/  dev; int /*<<< orphan*/  request_limit; int /*<<< orphan*/  queue; scalar_t__ reenable_crq; scalar_t__ reset_crq; } ;
struct TYPE_2__ {int (* reset_crq_queue ) (int /*<<< orphan*/ *,struct ibmvscsi_host_data*) ;int (* send_crq ) (struct ibmvscsi_host_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* reenable_crq_queue ) (int /*<<< orphan*/ *,struct ibmvscsi_host_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVSCSI_CRQ_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* ibmvscsi_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ibmvscsi_host_data*) ; 
 int FUNC5 (struct ibmvscsi_host_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ibmvscsi_host_data*) ; 
 int FUNC7 (struct ibmvscsi_host_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ibmvscsi_host_data *hostdata)
{
	int rc;
	const char *action = "reset";

	if (hostdata->reset_crq) {
		hostdata->reset_crq = 0;
		FUNC3();

		rc = ibmvscsi_ops->reset_crq_queue(&hostdata->queue, hostdata);
		if (!rc)
			rc = ibmvscsi_ops->send_crq(hostdata, IBMVSCSI_CRQ_INIT, 0);
		FUNC9(FUNC8(hostdata->dev));
	} else if (hostdata->reenable_crq) {
		hostdata->reenable_crq = 0;
		FUNC3();
		action = "enable";
		rc = ibmvscsi_ops->reenable_crq_queue(&hostdata->queue, hostdata);
		if (!rc)
			rc = ibmvscsi_ops->send_crq(hostdata, IBMVSCSI_CRQ_INIT, 0);
	} else
		return;

	if (rc) {
		FUNC0(&hostdata->request_limit, -1);
		FUNC1(hostdata->dev, "error after %s\n", action);
	}

	FUNC2(hostdata->host);
}