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
struct skcipher_givcrypt_request {int /*<<< orphan*/  giv; } ;
struct eseqiv_request_ctx {scalar_t__ tail; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct eseqiv_request_ctx* FUNC4 (struct skcipher_givcrypt_request*) ; 
 struct crypto_ablkcipher* FUNC5 (struct skcipher_givcrypt_request*) ; 

__attribute__((used)) static void FUNC6(struct skcipher_givcrypt_request *req)
{
	struct crypto_ablkcipher *geniv = FUNC5(req);
	struct eseqiv_request_ctx *reqctx = FUNC4(req);

	FUNC3(req->giv, FUNC0((u8 *)reqctx->tail,
			 FUNC1(geniv) + 1),
	       FUNC2(geniv));
}