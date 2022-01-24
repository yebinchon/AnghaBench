#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {unsigned long offset; int /*<<< orphan*/  length; } ;
struct TYPE_5__ {int flags; } ;
struct hifn_request_context {scalar_t__ mode; int /*<<< orphan*/  type; int /*<<< orphan*/  op; int /*<<< orphan*/  ivsize; scalar_t__ iv; TYPE_2__ walk; } ;
struct hifn_device {scalar_t__ started; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; int /*<<< orphan*/  active; int /*<<< orphan*/  snum; } ;
struct hifn_context {int /*<<< orphan*/  keysize; int /*<<< orphan*/  key; struct hifn_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  tfm; } ;
struct ablkcipher_request {unsigned int nbytes; struct scatterlist* dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ ACRYPTO_MODE_ECB ; 
 int ASYNC_FLAGS_MISALIGNED ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HIFN_DEFAULT_ACTIVE_NUM ; 
 int /*<<< orphan*/  HIFN_D_DST_DALIGN ; 
 scalar_t__ HIFN_QUEUE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 struct hifn_request_context* FUNC1 (struct ablkcipher_request*) ; 
 int FUNC2 (struct ablkcipher_request*,TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ) ; 
 struct hifn_context* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hifn_device*,struct hifn_context*,struct hifn_request_context*,int /*<<< orphan*/ ,struct scatterlist*,unsigned int,struct ablkcipher_request*) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct ablkcipher_request *req)
{
	struct hifn_context *ctx = FUNC4(req->base.tfm);
	struct hifn_request_context *rctx = FUNC1(req);
	struct hifn_device *dev = ctx->dev;
	unsigned long dlen, flags;
	unsigned int nbytes = req->nbytes, idx = 0;
	int err = -EINVAL, sg_num;
	struct scatterlist *dst;

	if (rctx->iv && !rctx->ivsize && rctx->mode != ACRYPTO_MODE_ECB)
		goto err_out_exit;

	rctx->walk.flags = 0;

	while (nbytes) {
		dst = &req->dst[idx];
		dlen = FUNC6(dst->length, nbytes);

		if (!FUNC0(dst->offset, HIFN_D_DST_DALIGN) ||
		    !FUNC0(dlen, HIFN_D_DST_DALIGN))
			rctx->walk.flags |= ASYNC_FLAGS_MISALIGNED;

		nbytes -= dlen;
		idx++;
	}

	if (rctx->walk.flags & ASYNC_FLAGS_MISALIGNED) {
		err = FUNC3(&rctx->walk, idx, GFP_ATOMIC);
		if (err < 0)
			return err;
	}

	sg_num = FUNC2(req, &rctx->walk);
	if (sg_num < 0) {
		err = sg_num;
		goto err_out_exit;
	}

	FUNC8(&dev->lock, flags);
	if (dev->started + sg_num > HIFN_QUEUE_LENGTH) {
		err = -EAGAIN;
		goto err_out;
	}

	err = FUNC5(dev, ctx, rctx, req->src, req->dst, req->nbytes, req);
	if (err)
		goto err_out;

	dev->snum++;

	dev->active = HIFN_DEFAULT_ACTIVE_NUM;
	FUNC9(&dev->lock, flags);

	return 0;

err_out:
	FUNC9(&dev->lock, flags);
err_out_exit:
	if (err) {
		FUNC7("%s: iv: %p [%d], key: %p [%d], mode: %u, op: %u, "
				"type: %u, err: %d.\n",
			dev->name, rctx->iv, rctx->ivsize,
			ctx->key, ctx->keysize,
			rctx->mode, rctx->op, rctx->type, err);
	}

	return err;
}