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
struct TYPE_2__ {size_t util_state; int /*<<< orphan*/  libassist; int /*<<< orphan*/  maj_flt; int /*<<< orphan*/  min_flt; int /*<<< orphan*/  hash_flt; int /*<<< orphan*/  invol_ctx_switch; int /*<<< orphan*/  vol_ctx_switch; } ;
struct spu_context {TYPE_1__ stats; } ;
struct seq_file {struct spu_context* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPU_UTIL_IDLE_LOADED ; 
 int /*<<< orphan*/  SPU_UTIL_IOWAIT ; 
 int /*<<< orphan*/  SPU_UTIL_SYSTEM ; 
 int /*<<< orphan*/  SPU_UTIL_USER ; 
 int /*<<< orphan*/ * ctx_state_names ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct spu_context*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *private)
{
	struct spu_context *ctx = s->private;
	int ret;

	ret = FUNC1(ctx);
	if (ret)
		return ret;

	FUNC0(s, "%s %llu %llu %llu %llu "
		      "%llu %llu %llu %llu %llu %llu %llu %llu\n",
		ctx_state_names[ctx->stats.util_state],
		FUNC3(ctx, SPU_UTIL_USER),
		FUNC3(ctx, SPU_UTIL_SYSTEM),
		FUNC3(ctx, SPU_UTIL_IOWAIT),
		FUNC3(ctx, SPU_UTIL_IDLE_LOADED),
		ctx->stats.vol_ctx_switch,
		ctx->stats.invol_ctx_switch,
		FUNC5(ctx),
		ctx->stats.hash_flt,
		ctx->stats.min_flt,
		ctx->stats.maj_flt,
		FUNC4(ctx),
		ctx->stats.libassist);
	FUNC2(ctx);
	return 0;
}