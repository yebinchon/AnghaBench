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
typedef  int /*<<< orphan*/  u8 ;
struct dm_crypt_request {int /*<<< orphan*/  sg_out; int /*<<< orphan*/  sg_in; struct convert_context* ctx; } ;
struct crypt_config {TYPE_1__* iv_gen_ops; int /*<<< orphan*/  tfm; } ;
struct convert_context {scalar_t__ offset_in; scalar_t__ offset_out; int /*<<< orphan*/  bio_in; int /*<<< orphan*/  sector; int /*<<< orphan*/  idx_out; int /*<<< orphan*/  idx_in; int /*<<< orphan*/  bio_out; } ;
struct bio_vec {scalar_t__ bv_offset; scalar_t__ bv_len; int /*<<< orphan*/  bv_page; } ;
struct ablkcipher_request {int dummy; } ;
struct TYPE_2__ {int (* generator ) (struct crypt_config*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,scalar_t__) ; 
 int SECTOR_SHIFT ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct bio_vec* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ablkcipher_request*) ; 
 int FUNC6 (struct ablkcipher_request*) ; 
 struct dm_crypt_request* FUNC7 (struct crypt_config*,struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC10 (struct crypt_config*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct crypt_config *cc,
			       struct convert_context *ctx,
			       struct ablkcipher_request *req)
{
	struct bio_vec *bv_in = FUNC3(ctx->bio_in, ctx->idx_in);
	struct bio_vec *bv_out = FUNC3(ctx->bio_out, ctx->idx_out);
	struct dm_crypt_request *dmreq;
	u8 *iv;
	int r = 0;

	dmreq = FUNC7(cc, req);
	iv = (u8 *)FUNC0((unsigned long)(dmreq + 1),
			 FUNC4(cc->tfm) + 1);

	dmreq->ctx = ctx;
	FUNC8(&dmreq->sg_in, 1);
	FUNC9(&dmreq->sg_in, bv_in->bv_page, 1 << SECTOR_SHIFT,
		    bv_in->bv_offset + ctx->offset_in);

	FUNC8(&dmreq->sg_out, 1);
	FUNC9(&dmreq->sg_out, bv_out->bv_page, 1 << SECTOR_SHIFT,
		    bv_out->bv_offset + ctx->offset_out);

	ctx->offset_in += 1 << SECTOR_SHIFT;
	if (ctx->offset_in >= bv_in->bv_len) {
		ctx->offset_in = 0;
		ctx->idx_in++;
	}

	ctx->offset_out += 1 << SECTOR_SHIFT;
	if (ctx->offset_out >= bv_out->bv_len) {
		ctx->offset_out = 0;
		ctx->idx_out++;
	}

	if (cc->iv_gen_ops) {
		r = cc->iv_gen_ops->generator(cc, iv, ctx->sector);
		if (r < 0)
			return r;
	}

	FUNC1(req, &dmreq->sg_in, &dmreq->sg_out,
				     1 << SECTOR_SHIFT, iv);

	if (FUNC2(ctx->bio_in) == WRITE)
		r = FUNC6(req);
	else
		r = FUNC5(req);

	return r;
}