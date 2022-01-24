#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * semaphore; } ;
struct TYPE_7__ {int idx; int endidx; TYPE_1__ act; scalar_t__ actidx; } ;
struct hp_sdc_mlc_priv_s {int* tseq; TYPE_4__ trans; } ;
struct TYPE_6__ {int /*<<< orphan*/  csem; int /*<<< orphan*/  osem; int /*<<< orphan*/  isem; struct hp_sdc_mlc_priv_s* priv; } ;
typedef  TYPE_2__ hil_mlc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int HP_SDC_ACT_DATAIN ; 
 int HP_SDC_ACT_POSTCMD ; 
 int HP_SDC_ACT_SEMAPHORE ; 
 int HP_SDC_CMD_READ_USE ; 
 int HP_SDC_USE_LOOP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(hil_mlc *mlc)
{
	struct hp_sdc_mlc_priv_s *priv;

	priv = mlc->priv;

	/* Try to down the semaphores -- they should be up. */
	FUNC0(FUNC2(&mlc->isem));
	FUNC0(FUNC2(&mlc->osem));

	FUNC3(&mlc->isem);
	FUNC3(&mlc->osem);

	if (FUNC2(&mlc->csem)) {
		if (priv->trans.act.semaphore != &mlc->csem)
			goto poll;
		else
			goto busy;
	}

	if (!(priv->tseq[4] & HP_SDC_USE_LOOP))
		goto done;

 poll:
	priv->trans.act.semaphore = &mlc->csem;
	priv->trans.actidx = 0;
	priv->trans.idx = 1;
	priv->trans.endidx = 5;
	priv->tseq[0] =
		HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN | HP_SDC_ACT_SEMAPHORE;
	priv->tseq[1] = HP_SDC_CMD_READ_USE;
	priv->tseq[2] = 1;
	priv->tseq[3] = 0;
	priv->tseq[4] = 0;
	FUNC1(&priv->trans);
 busy:
	return 1;
 done:
	priv->trans.act.semaphore = &mlc->osem;
	FUNC3(&mlc->csem);
	return 0;
}