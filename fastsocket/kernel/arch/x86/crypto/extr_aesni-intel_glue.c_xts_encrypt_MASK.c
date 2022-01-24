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
struct xts_crypt_req {int tbuflen; int /*<<< orphan*/  crypt_fn; int /*<<< orphan*/  crypt_ctx; int /*<<< orphan*/  tweak_fn; int /*<<< orphan*/  tweak_ctx; int /*<<< orphan*/ * tbuf; } ;
struct scatterlist {int dummy; } ;
struct blkcipher_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;
struct aesni_xts_ctx {int /*<<< orphan*/  raw_crypt_ctx; int /*<<< orphan*/  raw_tweak_ctx; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  be128 ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aesni_xts_tweak ; 
 struct aesni_xts_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  lrw_xts_encrypt_callback ; 
 int FUNC4 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int,struct xts_crypt_req*) ; 

__attribute__((used)) static int FUNC5(struct blkcipher_desc *desc, struct scatterlist *dst,
		       struct scatterlist *src, unsigned int nbytes)
{
	struct aesni_xts_ctx *ctx = FUNC1(desc->tfm);
	be128 buf[8];
	struct xts_crypt_req req = {
		.tbuf = buf,
		.tbuflen = sizeof(buf),

		.tweak_ctx = FUNC0(ctx->raw_tweak_ctx),
		.tweak_fn = aesni_xts_tweak,
		.crypt_ctx = FUNC0(ctx->raw_crypt_ctx),
		.crypt_fn = lrw_xts_encrypt_callback,
	};
	int ret;

	desc->flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;

	FUNC2();
	ret = FUNC4(desc, dst, src, nbytes, &req);
	FUNC3();

	return ret;
}