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
struct TYPE_2__ {int hdr; } ;
struct talitos_edesc {TYPE_1__ desc; } ;
struct talitos_ctx {int desc_hdr_template; int /*<<< orphan*/  iv; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
struct aead_givcrypt_request {int /*<<< orphan*/  seq; scalar_t__ giv; struct aead_request areq; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int DESC_HDR_MODE0_ENCRYPT ; 
 scalar_t__ FUNC0 (struct talitos_edesc*) ; 
 int FUNC1 (struct talitos_edesc*) ; 
 struct talitos_edesc* FUNC2 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct talitos_ctx* FUNC4 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC6 (struct aead_request*) ; 
 int FUNC7 (struct talitos_edesc*,struct aead_request*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipsec_esp_encrypt_done ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct aead_givcrypt_request *req)
{
	struct aead_request *areq = &req->areq;
	struct crypto_aead *authenc = FUNC6(areq);
	struct talitos_ctx *ctx = FUNC4(authenc);
	struct talitos_edesc *edesc;

	/* allocate extended descriptor */
	edesc = FUNC2(areq, 0);
	if (FUNC0(edesc))
		return FUNC1(edesc);

	/* set encrypt */
	edesc->desc.hdr = ctx->desc_hdr_template | DESC_HDR_MODE0_ENCRYPT;

	FUNC8(req->giv, ctx->iv, FUNC5(authenc));
	/* avoid consecutive packets going out with same IV */
	*(__be64 *)req->giv ^= FUNC3(req->seq);

	return FUNC7(edesc, areq, req->giv, req->seq,
			 ipsec_esp_encrypt_done);
}