#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {int* iv; int /*<<< orphan*/  nonce; } ;
struct TYPE_6__ {TYPE_2__ ccm; } ;
struct nx_crypto_ctx {TYPE_3__ priv; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {int* info; struct crypto_blkcipher* tfm; } ;
struct TYPE_4__ {scalar_t__ tfm; } ;
struct aead_request {TYPE_1__ base; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int FUNC0 (struct aead_request*,struct blkcipher_desc*) ; 
 struct nx_crypto_ctx* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct aead_request *req)
{
	struct nx_crypto_ctx *nx_ctx = FUNC1(req->base.tfm);
	struct blkcipher_desc desc;
	u8 *iv = nx_ctx->priv.ccm.iv;

	iv[0] = 3;
	FUNC2(iv + 1, nx_ctx->priv.ccm.nonce, 3);
	FUNC2(iv + 4, req->iv, 8);

	desc.info = iv;
	desc.tfm = (struct crypto_blkcipher *)req->base.tfm;

	return FUNC0(req, &desc);
}