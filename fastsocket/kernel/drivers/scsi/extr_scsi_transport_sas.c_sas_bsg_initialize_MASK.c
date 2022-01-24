#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct sas_rphy {int host_no; struct request_queue* q; struct device shost_gendev; struct device dev; TYPE_2__* hostt; int /*<<< orphan*/  transportt; } ;
struct request_queue {struct sas_rphy* queuedata; } ;
struct Scsi_Host {int host_no; struct request_queue* q; struct device shost_gendev; struct device dev; TYPE_2__* hostt; int /*<<< orphan*/  transportt; } ;
typedef  int /*<<< orphan*/  namebuf ;
struct TYPE_8__ {struct request_queue* q; } ;
struct TYPE_7__ {TYPE_1__* f; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  smp_handler; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QUEUE_FLAG_BIDI ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 struct request_queue* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct request_queue*,struct device*,char const*,void (*) (struct device*)) ; 
 char* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct request_queue*) ; 
 void FUNC6 (struct device*) ; 
 int /*<<< orphan*/  sas_host_smp_request ; 
 int /*<<< orphan*/  sas_non_host_smp_request ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 TYPE_4__* FUNC8 (struct sas_rphy*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct Scsi_Host *shost, struct sas_rphy *rphy)
{
	struct request_queue *q;
	int error;
	struct device *dev;
	char namebuf[20];
	const char *name;
	void (*release)(struct device *);

	if (!FUNC9(shost->transportt)->f->smp_handler) {
		FUNC4("%s can't handle SMP requests\n", shost->hostt->name);
		return 0;
	}

	if (rphy) {
		q = FUNC1(sas_non_host_smp_request, NULL);
		dev = &rphy->dev;
		name = FUNC3(dev);
		release = NULL;
	} else {
		q = FUNC1(sas_host_smp_request, NULL);
		dev = &shost->shost_gendev;
		FUNC7(namebuf, sizeof(namebuf),
			 "sas_host%d", shost->host_no);
		name = namebuf;
		release = sas_host_release;
	}
	if (!q)
		return -ENOMEM;

	error = FUNC2(q, dev, name, release);
	if (error) {
		FUNC0(q);
		return -ENOMEM;
	}

	if (rphy)
		rphy->q = q;
	else
		FUNC8(shost)->q = q;

	if (rphy)
		q->queuedata = rphy;
	else
		q->queuedata = shost;

	FUNC5(QUEUE_FLAG_BIDI, q);
	return 0;
}