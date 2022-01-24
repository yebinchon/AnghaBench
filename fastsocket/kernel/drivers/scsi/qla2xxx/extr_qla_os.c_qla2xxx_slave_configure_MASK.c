#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {scalar_t__ tagged_supported; int /*<<< orphan*/  request_queue; int /*<<< orphan*/  host; } ;
struct req_que {int /*<<< orphan*/  max_q_depth; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw; struct req_que* req; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct scsi_device *sdev)
{
	scsi_qla_host_t *vha = FUNC4(sdev->host);
	struct req_que *req = vha->req;

	if (FUNC0(vha->hw))
		FUNC1(sdev->request_queue, 0x7);

	if (sdev->tagged_supported)
		FUNC2(sdev, req->max_q_depth);
	else
		FUNC3(sdev, req->max_q_depth);
	return 0;
}