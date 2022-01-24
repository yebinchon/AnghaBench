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
struct seqiv_ctx {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int flags; void* data; int /*<<< orphan*/  complete; } ;
struct aead_request {int /*<<< orphan*/ * iv; int /*<<< orphan*/  assoclen; int /*<<< orphan*/  assoc; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct aead_givcrypt_request {int /*<<< orphan*/  giv; int /*<<< orphan*/  seq; struct aead_request areq; } ;
typedef  int /*<<< orphan*/  crypto_completion_t ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 struct aead_request* FUNC2 (struct aead_givcrypt_request*) ; 
 struct crypto_aead* FUNC3 (struct aead_givcrypt_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct aead_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct crypto_aead*) ; 
 struct seqiv_ctx* FUNC9 (struct crypto_aead*) ; 
 int FUNC10 (struct aead_request*) ; 
 unsigned int FUNC11 (struct crypto_aead*) ; 
 int /*<<< orphan*/ * FUNC12 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  seqiv_aead_complete ; 
 int /*<<< orphan*/  FUNC14 (struct aead_givcrypt_request*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct seqiv_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct aead_givcrypt_request *req)
{
	struct crypto_aead *geniv = FUNC3(req);
	struct seqiv_ctx *ctx = FUNC9(geniv);
	struct aead_request *areq = &req->areq;
	struct aead_request *subreq = FUNC2(req);
	crypto_completion_t complete;
	void *data;
	u8 *info;
	unsigned int ivsize;
	int err;

	FUNC7(subreq, FUNC1(geniv));

	complete = areq->base.complete;
	data = areq->base.data;
	info = areq->iv;

	ivsize = FUNC11(geniv);

	if (FUNC16(!FUNC0((unsigned long)info,
				 FUNC8(geniv) + 1))) {
		info = FUNC12(ivsize, areq->base.flags &
				       CRYPTO_TFM_REQ_MAY_SLEEP ? GFP_KERNEL:
								  GFP_ATOMIC);
		if (!info)
			return -ENOMEM;

		complete = seqiv_aead_complete;
		data = req;
	}

	FUNC5(subreq, areq->base.flags, complete, data);
	FUNC6(subreq, areq->src, areq->dst, areq->cryptlen,
			       info);
	FUNC4(subreq, areq->assoc, areq->assoclen);

	FUNC15(ctx, info, req->seq, ivsize);
	FUNC13(req->giv, info, ivsize);

	err = FUNC10(subreq);
	if (FUNC16(info != areq->iv))
		FUNC14(req, err);
	return err;
}