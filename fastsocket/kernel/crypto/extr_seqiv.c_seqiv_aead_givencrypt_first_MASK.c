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
struct seqiv_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  salt; } ;
struct crypto_aead {int dummy; } ;
struct aead_givcrypt_request {int dummy; } ;
struct TYPE_2__ {scalar_t__ givencrypt; } ;

/* Variables and functions */
 struct crypto_aead* FUNC0 (struct aead_givcrypt_request*) ; 
 TYPE_1__* FUNC1 (struct crypto_aead*) ; 
 struct seqiv_ctx* FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  crypto_default_rng ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct aead_givcrypt_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct aead_givcrypt_request *req)
{
	struct crypto_aead *geniv = FUNC0(req);
	struct seqiv_ctx *ctx = FUNC2(geniv);
	int err = 0;

	FUNC6(&ctx->lock);
	if (FUNC1(geniv)->givencrypt != seqiv_aead_givencrypt_first)
		goto unlock;

	FUNC1(geniv)->givencrypt = seqiv_aead_givencrypt;
	err = FUNC4(crypto_default_rng, ctx->salt,
				   FUNC3(geniv));

unlock:
	FUNC7(&ctx->lock);

	if (err)
		return err;

	return FUNC5(req);
}