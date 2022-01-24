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
struct bfa_s {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  qe; } ;
struct TYPE_5__ {int /*<<< orphan*/  qe; } ;
struct bfa_meminfo_s {TYPE_2__ kva_info; TYPE_1__ dma_info; } ;
struct bfa_mem_dma_s {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  min_cfg; } ;
struct bfa_iocfc_cfg_s {TYPE_3__ drvcfg; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* meminfo ) (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ;} ;

/* Variables and functions */
 struct bfa_mem_dma_s* FUNC0 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC1 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC2 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC3 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC4 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC5 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC6 (struct bfa_s*) ; 
 struct bfa_mem_dma_s* FUNC7 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC16 (struct bfa_meminfo_s*,struct bfa_mem_dma_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 TYPE_4__** hal_mods ; 
 int /*<<< orphan*/  FUNC20 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ; 

void
FUNC22(struct bfa_iocfc_cfg_s *cfg, struct bfa_meminfo_s *meminfo,
		struct bfa_s *bfa)
{
	int		i;
	struct bfa_mem_dma_s *port_dma = FUNC6(bfa);
	struct bfa_mem_dma_s *ablk_dma = FUNC0(bfa);
	struct bfa_mem_dma_s *cee_dma = FUNC1(bfa);
	struct bfa_mem_dma_s *sfp_dma = FUNC7(bfa);
	struct bfa_mem_dma_s *flash_dma = FUNC3(bfa);
	struct bfa_mem_dma_s *diag_dma = FUNC2(bfa);
	struct bfa_mem_dma_s *phy_dma = FUNC5(bfa);
	struct bfa_mem_dma_s *fru_dma = FUNC4(bfa);

	FUNC9((cfg == NULL) || (meminfo == NULL));

	FUNC20((void *)meminfo, 0, sizeof(struct bfa_meminfo_s));

	/* Initialize the DMA & KVA meminfo queues */
	FUNC8(&meminfo->dma_info.qe);
	FUNC8(&meminfo->kva_info.qe);

	FUNC15(cfg, meminfo, bfa);

	for (i = 0; hal_mods[i]; i++)
		hal_mods[i]->meminfo(cfg, meminfo, bfa);

	/* dma info setup */
	FUNC16(meminfo, port_dma, FUNC18());
	FUNC16(meminfo, ablk_dma, FUNC10());
	FUNC16(meminfo, cee_dma, FUNC11());
	FUNC16(meminfo, sfp_dma, FUNC19());
	FUNC16(meminfo, flash_dma,
			  FUNC13(cfg->drvcfg.min_cfg));
	FUNC16(meminfo, diag_dma, FUNC12());
	FUNC16(meminfo, phy_dma,
			  FUNC17(cfg->drvcfg.min_cfg));
	FUNC16(meminfo, fru_dma,
			  FUNC14(cfg->drvcfg.min_cfg));
}