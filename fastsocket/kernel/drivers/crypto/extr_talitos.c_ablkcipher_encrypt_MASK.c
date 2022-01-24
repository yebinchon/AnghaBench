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
struct talitos_ctx {int desc_hdr_template; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int DESC_HDR_MODE0_ENCRYPT ; 
 scalar_t__ FUNC0 (struct talitos_edesc*) ; 
 int FUNC1 (struct talitos_edesc*) ; 
 int /*<<< orphan*/  ablkcipher_done ; 
 struct talitos_edesc* FUNC2 (struct ablkcipher_request*) ; 
 int FUNC3 (struct talitos_edesc*,struct ablkcipher_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct talitos_ctx* FUNC4 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC5 (struct ablkcipher_request*) ; 

__attribute__((used)) static int FUNC6(struct ablkcipher_request *areq)
{
	struct crypto_ablkcipher *cipher = FUNC5(areq);
	struct talitos_ctx *ctx = FUNC4(cipher);
	struct talitos_edesc *edesc;

	/* allocate extended descriptor */
	edesc = FUNC2(areq);
	if (FUNC0(edesc))
		return FUNC1(edesc);

	/* set encrypt */
	edesc->desc.hdr = ctx->desc_hdr_template | DESC_HDR_MODE0_ENCRYPT;

	return FUNC3(edesc, areq, NULL, ablkcipher_done);
}