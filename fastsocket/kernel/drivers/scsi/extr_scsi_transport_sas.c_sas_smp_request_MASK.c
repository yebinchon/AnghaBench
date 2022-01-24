#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sas_rphy {int dummy; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {int /*<<< orphan*/  errors; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_4__ {TYPE_1__* f; } ;
struct TYPE_3__ {int (* smp_handler ) (struct Scsi_Host*,struct sas_rphy*,struct request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*,int) ; 
 struct request* FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct request_queue *q, struct Scsi_Host *shost,
			    struct sas_rphy *rphy)
{
	struct request *req;
	int ret;
	int (*handler)(struct Scsi_Host *, struct sas_rphy *, struct request *);

	while (!FUNC2(q)) {
		req = FUNC1(q);
		if (!req)
			break;

		FUNC4(q->queue_lock);

		handler = FUNC5(shost->transportt)->f->smp_handler;
		ret = handler(shost, rphy, req);
		req->errors = ret;

		FUNC0(req, ret);

		FUNC3(q->queue_lock);
	}
}