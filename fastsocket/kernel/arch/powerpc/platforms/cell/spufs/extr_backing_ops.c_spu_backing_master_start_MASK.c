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
typedef  int u64 ;
struct TYPE_2__ {int mfc_sr1_RW; } ;
struct spu_state {int /*<<< orphan*/  register_lock; TYPE_1__ priv1; } ;
struct spu_context {struct spu_state csa; } ;

/* Variables and functions */
 int MFC_STATE1_MASTER_RUN_CONTROL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct spu_context *ctx)
{
	struct spu_state *csa = &ctx->csa;
	u64 sr1;

	FUNC0(&csa->register_lock);
	sr1 = csa->priv1.mfc_sr1_RW | MFC_STATE1_MASTER_RUN_CONTROL_MASK;
	csa->priv1.mfc_sr1_RW = sr1;
	FUNC1(&csa->register_lock);
}