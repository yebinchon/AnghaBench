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
struct bfa_cee_s {int /*<<< orphan*/  trcmod; } ;
struct TYPE_2__ {struct bfa_cee_s cee; } ;
struct bfa_s {int /*<<< orphan*/  ioc; int /*<<< orphan*/  trcmod; TYPE_1__ modules; } ;
struct bfa_mem_dma_s {int /*<<< orphan*/  dma_curp; int /*<<< orphan*/  kva_curp; } ;

/* Variables and functions */
 struct bfa_mem_dma_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_cee_s*,int /*<<< orphan*/ *,struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_cee_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bfa_s *bfa)
{
	struct bfa_cee_s	*cee = &bfa->modules.cee;
	struct bfa_mem_dma_s	*cee_dma = FUNC0(bfa);

	cee->trcmod = bfa->trcmod;
	FUNC1(cee, &bfa->ioc, bfa);
	FUNC2(cee, cee_dma->kva_curp, cee_dma->dma_curp);
}