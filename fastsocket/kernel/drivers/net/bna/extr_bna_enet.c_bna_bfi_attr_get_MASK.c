#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  num_entries; } ;
struct bfi_enet_attr_req {TYPE_2__ mh; } ;
struct bna_ioceth {int /*<<< orphan*/  msgq_cmd; TYPE_1__* bna; struct bfi_enet_attr_req attr_req; } ;
struct TYPE_4__ {int /*<<< orphan*/  msgq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_ENET_H2I_GET_ATTR_REQ ; 
 int /*<<< orphan*/  BFI_MC_ENET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bna_ioceth *ioceth)
{
	struct bfi_enet_attr_req *attr_req = &ioceth->attr_req;

	FUNC2(attr_req->mh, BFI_MC_ENET,
		BFI_ENET_H2I_GET_ATTR_REQ, 0, 0);
	attr_req->mh.num_entries = FUNC4(
	FUNC3(sizeof(struct bfi_enet_attr_req)));
	FUNC1(&ioceth->msgq_cmd, NULL, NULL,
		sizeof(struct bfi_enet_attr_req), &attr_req->mh);
	FUNC0(&ioceth->bna->msgq, &ioceth->msgq_cmd);
}