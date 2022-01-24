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
struct vio_dev {int dummy; } ;
struct ibmvfc_host {TYPE_1__* host; int /*<<< orphan*/  dev; } ;
struct ibmvfc_crq {scalar_t__ valid; } ;
struct ibmvfc_async_crq {scalar_t__ valid; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_async_crq*,struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_crq*,struct ibmvfc_host*) ; 
 struct ibmvfc_async_crq* FUNC2 (struct ibmvfc_host*) ; 
 struct ibmvfc_crq* FUNC3 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 struct vio_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct vio_dev*) ; 

__attribute__((used)) static void FUNC10(void *data)
{
	struct ibmvfc_host *vhost = data;
	struct vio_dev *vdev = FUNC7(vhost->dev);
	struct ibmvfc_crq *crq;
	struct ibmvfc_async_crq *async;
	unsigned long flags;
	int done = 0;

	FUNC5(vhost->host->host_lock, flags);
	while (!done) {
		/* Pull all the valid messages off the async CRQ */
		while ((async = FUNC2(vhost)) != NULL) {
			FUNC0(async, vhost);
			FUNC4();
			async->valid = 0;
		}

		/* Pull all the valid messages off the CRQ */
		while ((crq = FUNC3(vhost)) != NULL) {
			FUNC1(crq, vhost);
			FUNC4();
			crq->valid = 0;
		}

		FUNC9(vdev);
		if ((async = FUNC2(vhost)) != NULL) {
			FUNC8(vdev);
			FUNC0(async, vhost);
			FUNC4();
			async->valid = 0;
		} else if ((crq = FUNC3(vhost)) != NULL) {
			FUNC8(vdev);
			FUNC1(crq, vhost);
			FUNC4();
			crq->valid = 0;
		} else
			done = 1;
	}

	FUNC6(vhost->host->host_lock, flags);
}