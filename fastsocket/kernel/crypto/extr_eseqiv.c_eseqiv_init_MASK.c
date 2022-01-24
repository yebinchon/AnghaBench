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
struct eseqiv_request_ctx {int dummy; } ;
struct eseqiv_ctx {unsigned int reqoff; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {unsigned int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 struct crypto_ablkcipher* FUNC1 (struct crypto_tfm*) ; 
 unsigned long FUNC2 (struct crypto_ablkcipher*) ; 
 struct eseqiv_ctx* FUNC3 (struct crypto_ablkcipher*) ; 
 scalar_t__ FUNC4 (struct crypto_ablkcipher*) ; 
 int FUNC5 () ; 
 int FUNC6 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct crypto_tfm *tfm)
{
	struct crypto_ablkcipher *geniv = FUNC1(tfm);
	struct eseqiv_ctx *ctx = FUNC3(geniv);
	unsigned long alignmask;
	unsigned int reqsize;

	FUNC7(&ctx->lock);

	alignmask = FUNC5() - 1;
	reqsize = sizeof(struct eseqiv_request_ctx);

	if (alignmask & reqsize) {
		alignmask &= reqsize;
		alignmask--;
	}

	alignmask = ~alignmask;
	alignmask &= FUNC2(geniv);

	reqsize += alignmask;
	reqsize += FUNC4(geniv);
	reqsize = FUNC0(reqsize, FUNC5());

	ctx->reqoff = reqsize - sizeof(struct eseqiv_request_ctx);

	tfm->crt_ablkcipher.reqsize = reqsize +
				      sizeof(struct ablkcipher_request);

	return FUNC6(tfm);
}