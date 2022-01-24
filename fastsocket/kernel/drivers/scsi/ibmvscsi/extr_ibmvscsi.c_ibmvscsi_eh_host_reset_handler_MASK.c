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
struct scsi_cmnd {TYPE_1__* device; } ;
struct ibmvscsi_host_data {int /*<<< orphan*/  request_limit; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FAILED ; 
 unsigned long HZ ; 
 int SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvscsi_host_data*) ; 
 unsigned long init_timeout ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ibmvscsi_host_data* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *cmd)
{
	unsigned long wait_switch = 0;
	struct ibmvscsi_host_data *hostdata = FUNC4(cmd->device->host);

	FUNC1(hostdata->dev, "Resetting connection due to error recovery\n");

	FUNC2(hostdata);

	for (wait_switch = jiffies + (init_timeout * HZ);
	     FUNC5(jiffies, wait_switch) &&
		     FUNC0(&hostdata->request_limit) < 2;) {

		FUNC3(10);
	}

	if (FUNC0(&hostdata->request_limit) <= 0)
		return FAILED;

	return SUCCESS;
}