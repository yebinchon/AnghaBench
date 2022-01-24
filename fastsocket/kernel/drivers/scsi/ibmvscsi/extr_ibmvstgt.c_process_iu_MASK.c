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
struct viosrp_crq {scalar_t__ format; int /*<<< orphan*/  IU_length; int /*<<< orphan*/  IU_data_ptr; } ;
struct vio_port {int /*<<< orphan*/  liobn; int /*<<< orphan*/  riobn; } ;
struct srp_target {int dummy; } ;
struct iu_entry {TYPE_1__* sbuf; int /*<<< orphan*/  remote_token; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 long H_SUCCESS ; 
 scalar_t__ VIOSRP_MAD_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (char*,long,...) ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iu_entry*) ; 
 int FUNC3 (struct iu_entry*) ; 
 struct iu_entry* FUNC4 (struct srp_target*) ; 
 int /*<<< orphan*/  FUNC5 (struct iu_entry*) ; 
 struct vio_port* FUNC6 (struct srp_target*) ; 

__attribute__((used)) static void FUNC7(struct viosrp_crq *crq, struct srp_target *target)
{
	struct vio_port *vport = FUNC6(target);
	struct iu_entry *iue;
	long err;
	int done = 1;

	iue = FUNC4(target);
	if (!iue) {
		FUNC0("Error getting IU from pool, %p\n", target);
		return;
	}

	iue->remote_token = crq->IU_data_ptr;

	err = FUNC1(crq->IU_length, vport->riobn,
			  iue->remote_token, vport->liobn, iue->sbuf->dma);

	if (err != H_SUCCESS) {
		FUNC0("%ld transferring data error %p\n", err, iue);
		goto out;
	}

	if (crq->format == VIOSRP_MAD_FORMAT)
		done = FUNC2(iue);
	else
		done = FUNC3(iue);
out:
	if (done)
		FUNC5(iue);
}