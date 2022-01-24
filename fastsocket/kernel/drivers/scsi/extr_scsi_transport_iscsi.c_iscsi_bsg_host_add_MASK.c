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
struct request_queue {int dummy; } ;
struct iscsi_internal {TYPE_1__* iscsi_transport; } ;
struct iscsi_cls_host {struct request_queue* bsg_q; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_no; int /*<<< orphan*/  transportt; struct device shost_gendev; } ;
typedef  int /*<<< orphan*/  bsg_name ;
struct TYPE_2__ {int /*<<< orphan*/  bsg_request; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  KERN_ERR ; 
 struct request_queue* FUNC0 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int FUNC2 (struct device*,struct request_queue*,char*) ; 
 int /*<<< orphan*/  iscsi_bsg_request_fn ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 struct iscsi_internal* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct Scsi_Host *shost, struct iscsi_cls_host *ihost)
{
	struct device *dev = &shost->shost_gendev;
	struct iscsi_internal *i = FUNC5(shost->transportt);
	struct request_queue *q;
	char bsg_name[20];
	int ret;

	if (!i->iscsi_transport->bsg_request)
		return -ENOTSUPP;

	FUNC4(bsg_name, sizeof(bsg_name), "iscsi_host%d", shost->host_no);

	q = FUNC0(shost, iscsi_bsg_request_fn);
	if (!q)
		return -ENOMEM;

	ret = FUNC2(dev, q, bsg_name);
	if (ret) {
		FUNC3(KERN_ERR, shost, "bsg interface failed to "
			     "initialize - no request queue\n");
		FUNC1(q);
		return ret;
	}

	ihost->bsg_q = q;
	return 0;
}