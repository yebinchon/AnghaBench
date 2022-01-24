#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ixp_ctx {int /*<<< orphan*/ * nonce; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int /*<<< orphan*/ * info; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int CTR_RFC3686_BLOCK_SIZE ; 
 int CTR_RFC3686_IV_SIZE ; 
 int CTR_RFC3686_NONCE_SIZE ; 
 int FUNC0 (struct ablkcipher_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ixp_ctx* FUNC2 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC3 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct ablkcipher_request *req)
{
	struct crypto_ablkcipher *tfm = FUNC3(req);
	struct ixp_ctx *ctx = FUNC2(tfm);
	u8 iv[CTR_RFC3686_BLOCK_SIZE];
	u8 *info = req->info;
	int ret;

	/* set up counter block */
        FUNC4(iv, ctx->nonce, CTR_RFC3686_NONCE_SIZE);
	FUNC4(iv + CTR_RFC3686_NONCE_SIZE, info, CTR_RFC3686_IV_SIZE);

	/* initialize counter portion of counter block */
	*(__be32 *)(iv + CTR_RFC3686_NONCE_SIZE + CTR_RFC3686_IV_SIZE) =
		FUNC1(1);

	req->info = iv;
	ret = FUNC0(req, 1);
	req->info = info;
	return ret;
}