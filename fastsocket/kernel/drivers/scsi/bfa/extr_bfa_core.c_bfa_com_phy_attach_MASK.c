#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bfa_s {int /*<<< orphan*/  trcmod; int /*<<< orphan*/  ioc; } ;
struct bfa_phy_s {int dummy; } ;
struct bfa_mem_dma_s {int /*<<< orphan*/  dma_curp; int /*<<< orphan*/  kva_curp; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 struct bfa_mem_dma_s* FUNC0 (struct bfa_s*) ; 
 struct bfa_phy_s* FUNC1 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_phy_s*,int /*<<< orphan*/ *,struct bfa_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_phy_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_s *bfa, bfa_boolean_t mincfg)
{
	struct bfa_phy_s	*phy = FUNC1(bfa);
	struct bfa_mem_dma_s	*phy_dma = FUNC0(bfa);

	FUNC2(phy, &bfa->ioc, bfa, bfa->trcmod, mincfg);
	FUNC3(phy, phy_dma->kva_curp, phy_dma->dma_curp, mincfg);
}