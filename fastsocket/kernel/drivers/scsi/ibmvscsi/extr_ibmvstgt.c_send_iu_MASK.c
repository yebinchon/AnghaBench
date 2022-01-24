#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct viosrp_crq {int valid; int reserved; int timeout; int status; int /*<<< orphan*/  IU_data_ptr; int /*<<< orphan*/  IU_length; int /*<<< orphan*/  format; } ;
struct vio_port {TYPE_4__* dma_dev; int /*<<< orphan*/  riobn; int /*<<< orphan*/  liobn; } ;
struct srp_target {int dummy; } ;
struct iu_entry {int /*<<< orphan*/  remote_token; TYPE_1__* sbuf; struct srp_target* target; } ;
struct TYPE_7__ {int /*<<< orphan*/  tag; } ;
struct TYPE_8__ {TYPE_2__ rsp; } ;
struct TYPE_10__ {TYPE_3__ srp; } ;
struct TYPE_9__ {int /*<<< orphan*/  unit_address; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vio_port* FUNC3 (struct srp_target*) ; 
 TYPE_5__* FUNC4 (struct iu_entry*) ; 

__attribute__((used)) static int FUNC5(struct iu_entry *iue, uint64_t length, uint8_t format)
{
	struct srp_target *target = iue->target;
	struct vio_port *vport = FUNC3(target);
	long rc, rc1;
	union {
		struct viosrp_crq cooked;
		uint64_t raw[2];
	} crq;

	/* First copy the SRP */
	rc = FUNC1(length, vport->liobn, iue->sbuf->dma,
			 vport->riobn, iue->remote_token);

	if (rc)
		FUNC0("Error %ld transferring data\n", rc);

	crq.cooked.valid = 0x80;
	crq.cooked.format = format;
	crq.cooked.reserved = 0x00;
	crq.cooked.timeout = 0x00;
	crq.cooked.IU_length = length;
	crq.cooked.IU_data_ptr = FUNC4(iue)->srp.rsp.tag;

	if (rc == 0)
		crq.cooked.status = 0x99;	/* Just needs to be non-zero */
	else
		crq.cooked.status = 0x00;

	rc1 = FUNC2(vport->dma_dev->unit_address, crq.raw[0], crq.raw[1]);

	if (rc1) {
		FUNC0("%ld sending response\n", rc1);
		return rc1;
	}

	return rc;
}