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
struct scsi_qla_host {int dummy; } ;
struct req_que {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_0 ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_qla_host*,struct req_que*) ; 
 int FUNC1 (struct scsi_qla_host*,struct req_que*) ; 

int
FUNC2(struct scsi_qla_host *vha, struct req_que *req)
{
	int ret = -1;

	if (req) {
		req->options |= BIT_0;
		ret = FUNC1(vha, req);
	}
	if (ret == QLA_SUCCESS)
		FUNC0(vha, req);

	return ret;
}