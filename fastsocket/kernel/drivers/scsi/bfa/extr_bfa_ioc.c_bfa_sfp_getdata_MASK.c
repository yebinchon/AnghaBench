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
struct sfp_mem_s {int dummy; } ;
struct bfi_sfp_req_s {int memtype; int /*<<< orphan*/  alen; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_sfp_s {int lock; int memtype; int /*<<< orphan*/  dbuf_pa; int /*<<< orphan*/  state; TYPE_1__ mbcmd; } ;
typedef  enum bfi_sfp_mem_e { ____Placeholder_bfi_sfp_mem_e } bfi_sfp_mem_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_sfp_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_sfp_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_sfp_s *sfp, enum bfi_sfp_mem_e memtype)
{
	struct bfi_sfp_req_s *req = (struct bfi_sfp_req_s *)sfp->mbcmd.msg;

	FUNC0(sfp->lock != 0);
	FUNC3(sfp, sfp->state);

	sfp->lock = 1;
	sfp->memtype = memtype;
	req->memtype = memtype;

	/* Setup SG list */
	FUNC1(&req->alen, sizeof(struct sfp_mem_s), sfp->dbuf_pa);

	FUNC2(sfp);
}