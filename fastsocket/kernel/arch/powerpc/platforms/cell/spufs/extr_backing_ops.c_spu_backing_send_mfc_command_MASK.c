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
struct TYPE_2__ {int /*<<< orphan*/  register_lock; } ;
struct spu_context {TYPE_1__ csa; } ;
struct mfc_dma_command {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct spu_context *ctx,
					struct mfc_dma_command *cmd)
{
	int ret;

	FUNC0(&ctx->csa.register_lock);
	ret = -EAGAIN;
	/* FIXME: set up priv2->puq */
	FUNC1(&ctx->csa.register_lock);

	return ret;
}