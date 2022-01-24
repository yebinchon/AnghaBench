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
struct request_queue {struct fc_rport* queuedata; } ;
struct fc_rport {int /*<<< orphan*/  dev; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,struct Scsi_Host*,struct fc_rport*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC1 (struct fc_rport*) ; 

__attribute__((used)) static void
FUNC2(struct request_queue *q)
{
	struct fc_rport *rport = q->queuedata;
	struct Scsi_Host *shost = FUNC1(rport);

	FUNC0(q, shost, rport, &rport->dev);
}