#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int flags; void* data; int /*<<< orphan*/  complete; } ;
struct TYPE_4__ {int /*<<< orphan*/ * info; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct skcipher_givcrypt_request {TYPE_2__ creq; int /*<<< orphan*/  giv; int /*<<< orphan*/  seq; } ;
struct seqiv_ctx {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;
typedef  int /*<<< orphan*/  crypto_completion_t ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ablkcipher_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct crypto_ablkcipher*) ; 
 struct seqiv_ctx* FUNC5 (struct crypto_ablkcipher*) ; 
 int FUNC6 (struct ablkcipher_request*) ; 
 unsigned int FUNC7 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/ * FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  seqiv_complete ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_givcrypt_request*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct seqiv_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_ablkcipher*) ; 
 struct ablkcipher_request* FUNC13 (struct skcipher_givcrypt_request*) ; 
 struct crypto_ablkcipher* FUNC14 (struct skcipher_givcrypt_request*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct skcipher_givcrypt_request *req)
{
	struct crypto_ablkcipher *geniv = FUNC14(req);
	struct seqiv_ctx *ctx = FUNC5(geniv);
	struct ablkcipher_request *subreq = FUNC13(req);
	crypto_completion_t complete;
	void *data;
	u8 *info;
	unsigned int ivsize;
	int err;

	FUNC3(subreq, FUNC12(geniv));

	complete = req->creq.base.complete;
	data = req->creq.base.data;
	info = req->creq.info;

	ivsize = FUNC7(geniv);

	if (FUNC15(!FUNC0((unsigned long)info,
				 FUNC4(geniv) + 1))) {
		info = FUNC8(ivsize, req->creq.base.flags &
				       CRYPTO_TFM_REQ_MAY_SLEEP ? GFP_KERNEL:
								  GFP_ATOMIC);
		if (!info)
			return -ENOMEM;

		complete = seqiv_complete;
		data = req;
	}

	FUNC1(subreq, req->creq.base.flags, complete,
					data);
	FUNC2(subreq, req->creq.src, req->creq.dst,
				     req->creq.nbytes, info);

	FUNC11(ctx, info, req->seq, ivsize);
	FUNC9(req->giv, info, ivsize);

	err = FUNC6(subreq);
	if (FUNC15(info != req->creq.info))
		FUNC10(req, err);
	return err;
}