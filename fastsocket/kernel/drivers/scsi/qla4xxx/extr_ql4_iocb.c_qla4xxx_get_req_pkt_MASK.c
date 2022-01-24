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
typedef  int uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  req_q_count; struct queue_entry* request_ptr; } ;
struct queue_entry {int dummy; } ;

/* Variables and functions */
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct queue_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*,int) ; 

__attribute__((used)) static int FUNC3(struct scsi_qla_host *ha,
			       struct queue_entry **queue_entry)
{
	uint16_t req_cnt = 1;

	if (FUNC2(ha, req_cnt)) {
		*queue_entry = ha->request_ptr;
		FUNC0(*queue_entry, 0, sizeof(**queue_entry));

		FUNC1(ha);
		ha->req_q_count -= req_cnt;
		return QLA_SUCCESS;
	}

	return QLA_ERROR;
}