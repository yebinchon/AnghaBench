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
struct ibmvscsi_host_data {int dummy; } ;
struct crq_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  iseriesvscsi_handle_event ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct ibmvscsi_host_data* single_host_data ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  viomajorsubtype_scsi ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  viopath_hostLp ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct crq_queue *queue,
				       struct ibmvscsi_host_data *hostdata,
				       int max_requests)
{
	int rc;

	single_host_data = hostdata;
	rc = FUNC3(viopath_hostLp, viomajorsubtype_scsi, max_requests);
	if (rc < 0) {
		FUNC0("viopath_open failed with rc %d in open_event_path\n",
		       rc);
		goto viopath_open_failed;
	}

	rc = FUNC1(viomajorsubtype_scsi, iseriesvscsi_handle_event);
	if (rc < 0) {
		FUNC0("vio_setHandler failed with rc %d in open_event_path\n",
		       rc);
		goto vio_setHandler_failed;
	}
	return 0;

      vio_setHandler_failed:
	FUNC2(viopath_hostLp, viomajorsubtype_scsi, max_requests);
      viopath_open_failed:
	return -1;
}