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
struct scatterlist {int dummy; } ;
struct scatter_walk {int /*<<< orphan*/  sg; } ;
struct crypto_cipher {int dummy; } ;
struct crypto_ccm_req_priv_ctx {int ilen; int /*<<< orphan*/ * idata; int /*<<< orphan*/ * odata; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_cipher*,int /*<<< orphan*/ *,int,struct crypto_ccm_req_priv_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_cipher*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scatter_walk*,int) ; 
 int FUNC6 (struct scatter_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatter_walk*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * FUNC8 (struct scatter_walk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scatter_walk*,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct crypto_cipher *tfm,
			       struct crypto_ccm_req_priv_ctx *pctx,
			       struct scatterlist *sg, unsigned int len)
{
	struct scatter_walk walk;
	u8 *data_src;
	int n;

	FUNC9(&walk, sg);

	while (len) {
		n = FUNC6(&walk, len);
		if (!n) {
			FUNC9(&walk, FUNC11(walk.sg));
			n = FUNC6(&walk, len);
		}
		data_src = FUNC8(&walk, 0);

		FUNC0(tfm, data_src, n, pctx);
		len -= n;

		FUNC10(data_src, 0);
		FUNC5(&walk, n);
		FUNC7(&walk, 0, len);
		if (len)
			FUNC3(pctx->flags);
	}

	/* any leftover needs padding and then encrypted */
	if (pctx->ilen) {
		int padlen;
		u8 *odata = pctx->odata;
		u8 *idata = pctx->idata;

		padlen = 16 - pctx->ilen;
		FUNC4(idata + pctx->ilen, 0, padlen);
		FUNC2(odata, idata, 16);
		FUNC1(tfm, odata, odata);
		pctx->ilen = 0;
	}
}