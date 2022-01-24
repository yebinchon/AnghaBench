#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wwn_t ;
typedef  int u8 ;
struct TYPE_6__ {int nwwns; int /*<<< orphan*/  wwn; } ;
struct TYPE_5__ {int nbluns; TYPE_1__* blun; scalar_t__ boot_enabled; } ;
struct bfi_iocfc_cfgrsp_s {TYPE_3__ bootwwns; TYPE_2__ pbc_cfg; } ;
struct bfa_iocfc_s {struct bfi_iocfc_cfgrsp_s* cfgrsp; } ;
struct bfa_s {struct bfa_iocfc_s iocfc; } ;
struct TYPE_4__ {int /*<<< orphan*/  tgt_pwwn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct bfa_s *bfa, u8 *nwwns, wwn_t *wwns)
{
	struct bfa_iocfc_s *iocfc = &bfa->iocfc;
	struct bfi_iocfc_cfgrsp_s *cfgrsp = iocfc->cfgrsp;
	int i;

	if (cfgrsp->pbc_cfg.boot_enabled && cfgrsp->pbc_cfg.nbluns) {
		FUNC0(bfa, cfgrsp->pbc_cfg.nbluns);
		*nwwns = cfgrsp->pbc_cfg.nbluns;
		for (i = 0; i < cfgrsp->pbc_cfg.nbluns; i++)
			wwns[i] = cfgrsp->pbc_cfg.blun[i].tgt_pwwn;

		return;
	}

	*nwwns = cfgrsp->bootwwns.nwwns;
	FUNC1(wwns, cfgrsp->bootwwns.wwn, sizeof(cfgrsp->bootwwns.wwn));
}