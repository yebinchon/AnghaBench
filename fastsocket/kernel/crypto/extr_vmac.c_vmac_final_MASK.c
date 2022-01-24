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
typedef  int /*<<< orphan*/  vmac_t ;
typedef  int /*<<< orphan*/  u8 ;
struct vmac_ctx_t {int /*<<< orphan*/  __vmac_ctx; } ;
struct vmac_ctx {int dummy; } ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 struct vmac_ctx_t* FUNC0 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vmac_ctx_t*) ; 

__attribute__((used)) static int FUNC4(struct shash_desc *pdesc, u8 *out)
{
	struct crypto_shash *parent = pdesc->tfm;
	struct vmac_ctx_t *ctx = FUNC0(parent);
	vmac_t mac;
	u8 nonce[16] = {};

	mac = FUNC3(NULL, 0, nonce, NULL, ctx);
	FUNC1(out, &mac, sizeof(vmac_t));
	FUNC2(&mac, 0, sizeof(vmac_t));
	FUNC2(&ctx->__vmac_ctx, 0, sizeof(struct vmac_ctx));
	return 0;
}