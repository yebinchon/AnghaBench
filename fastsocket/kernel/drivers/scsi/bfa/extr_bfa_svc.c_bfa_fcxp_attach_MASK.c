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
struct bfa_s {int dummy; } ;
struct bfa_pcidev_s {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  min_cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_fcxp_reqs; } ;
struct bfa_iocfc_cfg_s {TYPE_1__ drvcfg; TYPE_2__ fwcfg; } ;
struct bfa_fcxp_mod_s {int /*<<< orphan*/  rsp_wait_q; int /*<<< orphan*/  req_wait_q; int /*<<< orphan*/  rsp_pld_sz; int /*<<< orphan*/  req_pld_sz; int /*<<< orphan*/  num_fcxps; struct bfa_s* bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCXP_MAX_IBUF_SZ ; 
 int /*<<< orphan*/  BFA_FCXP_MAX_LBUF_SZ ; 
 struct bfa_fcxp_mod_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcxp_mod_s*) ; 

__attribute__((used)) static void
FUNC3(struct bfa_s *bfa, void *bfad, struct bfa_iocfc_cfg_s *cfg,
		struct bfa_pcidev_s *pcidev)
{
	struct bfa_fcxp_mod_s *mod = FUNC0(bfa);

	mod->bfa = bfa;
	mod->num_fcxps = cfg->fwcfg.num_fcxp_reqs;

	/*
	 * Initialize FCXP request and response payload sizes.
	 */
	mod->req_pld_sz = mod->rsp_pld_sz = BFA_FCXP_MAX_IBUF_SZ;
	if (!cfg->drvcfg.min_cfg)
		mod->rsp_pld_sz = BFA_FCXP_MAX_LBUF_SZ;

	FUNC1(&mod->req_wait_q);
	FUNC1(&mod->rsp_wait_q);

	FUNC2(mod);
}