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
struct scsi_device {int /*<<< orphan*/  host; } ;
struct request_queue {int dummy; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_lld_busy ; 
 int /*<<< orphan*/  scsi_prep_fn ; 
 int /*<<< orphan*/  scsi_request_fn ; 
 int /*<<< orphan*/  scsi_softirq_done ; 
 int /*<<< orphan*/  scsi_times_out ; 

struct request_queue *FUNC5(struct scsi_device *sdev)
{
	struct request_queue *q;

	q = FUNC0(sdev->host, scsi_request_fn);
	if (!q)
		return NULL;

	FUNC2(q, scsi_prep_fn);
	FUNC4(q, scsi_softirq_done);
	FUNC3(q, scsi_times_out);
	FUNC1(q, scsi_lld_busy);
	return q;
}