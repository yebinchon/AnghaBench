#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct scatter_walk {int dummy; } ;
struct nx_sg {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  out_pat; } ;
struct TYPE_11__ {TYPE_4__ aes_gca; } ;
struct nx_csbcpb {TYPE_5__ cpb; } ;
struct TYPE_12__ {int inlen; } ;
struct nx_crypto_ctx {TYPE_3__* stats; TYPE_6__ op_aead; struct nx_sg* in_sg; TYPE_1__* ap; struct nx_csbcpb* csbcpb_aead; } ;
struct TYPE_8__ {int flags; } ;
struct aead_request {int /*<<< orphan*/  assoclen; TYPE_2__ base; int /*<<< orphan*/  assoc; } ;
struct TYPE_9__ {int /*<<< orphan*/  aes_bytes; int /*<<< orphan*/  aes_ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  sglen; int /*<<< orphan*/  databytelen; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINVAL ; 
 int /*<<< orphan*/  SCATTERWALK_FROM_SG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nx_crypto_ctx*,TYPE_6__*,int) ; 
 struct nx_sg* FUNC4 (struct nx_sg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct scatter_walk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scatter_walk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scatter_walk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct nx_crypto_ctx  *nx_ctx,
		  struct aead_request   *req,
		  u8                    *out)
{
	struct nx_csbcpb *csbcpb_aead = nx_ctx->csbcpb_aead;
	int rc = -EINVAL;
	struct scatter_walk walk;
	struct nx_sg *nx_sg = nx_ctx->in_sg;

	if (req->assoclen > nx_ctx->ap->databytelen)
		goto out;

	if (req->assoclen <= AES_BLOCK_SIZE) {
		FUNC7(&walk, req->assoc);
		FUNC5(out, &walk, req->assoclen,
				       SCATTERWALK_FROM_SG);
		FUNC6(&walk, SCATTERWALK_FROM_SG, 0);

		rc = 0;
		goto out;
	}

	nx_sg = FUNC4(nx_sg, nx_ctx->ap->sglen, req->assoc, 0,
				  req->assoclen);
	nx_ctx->op_aead.inlen = (nx_ctx->in_sg - nx_sg) * sizeof(struct nx_sg);

	rc = FUNC3(nx_ctx, &nx_ctx->op_aead,
			   req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP);
	if (rc)
		goto out;

	FUNC1(&(nx_ctx->stats->aes_ops));
	FUNC0(req->assoclen, &(nx_ctx->stats->aes_bytes));

	FUNC2(out, csbcpb_aead->cpb.aes_gca.out_pat, AES_BLOCK_SIZE);
out:
	return rc;
}