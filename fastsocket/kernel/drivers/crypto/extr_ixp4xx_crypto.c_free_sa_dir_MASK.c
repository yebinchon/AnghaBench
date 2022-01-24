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
struct ix_sa_dir {int /*<<< orphan*/  npe_ctx_phys; int /*<<< orphan*/  npe_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  NPE_CTX_LEN ; 
 int /*<<< orphan*/  ctx_pool ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ix_sa_dir *dir)
{
	FUNC1(dir->npe_ctx, 0, NPE_CTX_LEN);
	FUNC0(ctx_pool, dir->npe_ctx, dir->npe_ctx_phys);
}