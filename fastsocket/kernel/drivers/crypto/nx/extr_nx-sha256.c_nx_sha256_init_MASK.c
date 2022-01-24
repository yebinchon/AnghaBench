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
typedef  int /*<<< orphan*/  u8 ;
struct shash_desc {TYPE_1__* tfm; } ;
struct sha256_state {scalar_t__ state; } ;
struct nx_sg {int dummy; } ;
struct TYPE_6__ {int outlen; } ;
struct nx_crypto_ctx {struct nx_sg* out_sg; TYPE_3__ op; TYPE_2__* ap; int /*<<< orphan*/  csbcpb; TYPE_2__* props; } ;
struct TYPE_5__ {int /*<<< orphan*/  sglen; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCOP_FC_SHA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NX_DS_SHA256 ; 
 size_t NX_PROPS_SHA256 ; 
 int /*<<< orphan*/  SHA256_DIGEST_SIZE ; 
 struct nx_crypto_ctx* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sha256_state*,int /*<<< orphan*/ ,int) ; 
 struct nx_sg* FUNC3 (struct nx_sg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nx_crypto_ctx*,int /*<<< orphan*/ ) ; 
 struct sha256_state* FUNC5 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC6(struct shash_desc *desc)
{
	struct sha256_state *sctx = FUNC5(desc);
	struct nx_crypto_ctx *nx_ctx = FUNC1(&desc->tfm->base);
	struct nx_sg *out_sg;

	FUNC4(nx_ctx, HCOP_FC_SHA);

	FUNC2(sctx, 0, sizeof *sctx);

	nx_ctx->ap = &nx_ctx->props[NX_PROPS_SHA256];

	FUNC0(nx_ctx->csbcpb, NX_DS_SHA256);
	out_sg = FUNC3(nx_ctx->out_sg, (u8 *)sctx->state,
				  SHA256_DIGEST_SIZE, nx_ctx->ap->sglen);
	nx_ctx->op.outlen = (nx_ctx->out_sg - out_sg) * sizeof(struct nx_sg);

	return 0;
}