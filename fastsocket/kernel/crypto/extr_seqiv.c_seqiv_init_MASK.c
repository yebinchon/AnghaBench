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
struct seqiv_ctx {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 struct crypto_ablkcipher* FUNC0 (struct crypto_tfm*) ; 
 struct seqiv_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 int FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm)
{
	struct crypto_ablkcipher *geniv = FUNC0(tfm);
	struct seqiv_ctx *ctx = FUNC1(geniv);

	FUNC3(&ctx->lock);

	tfm->crt_ablkcipher.reqsize = sizeof(struct ablkcipher_request);

	return FUNC2(tfm);
}