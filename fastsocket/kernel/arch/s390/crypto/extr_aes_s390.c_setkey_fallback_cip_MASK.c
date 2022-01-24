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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {TYPE_3__* blk; int /*<<< orphan*/  cip; } ;
struct s390_aes_ctx {TYPE_2__ fallback; } ;
struct crypto_tfm {int crt_flags; } ;
struct TYPE_4__ {int crt_flags; } ;
struct TYPE_6__ {TYPE_1__ base; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct s390_aes_ctx* FUNC1 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC2(struct crypto_tfm *tfm, const u8 *in_key,
		unsigned int key_len)
{
	struct s390_aes_ctx *sctx = FUNC1(tfm);
	int ret;

	sctx->fallback.blk->base.crt_flags &= ~CRYPTO_TFM_REQ_MASK;
	sctx->fallback.blk->base.crt_flags |= (tfm->crt_flags &
			CRYPTO_TFM_REQ_MASK);

	ret = FUNC0(sctx->fallback.cip, in_key, key_len);
	if (ret) {
		tfm->crt_flags &= ~CRYPTO_TFM_RES_MASK;
		tfm->crt_flags |= (sctx->fallback.blk->base.crt_flags &
				CRYPTO_TFM_RES_MASK);
	}
	return ret;
}