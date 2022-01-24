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
struct vmac_ctx_t {int /*<<< orphan*/  __vmac_ctx; } ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 struct vmac_ctx_t* FUNC0 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct shash_desc *pdesc, const u8 *p,
		unsigned int len)
{
	struct crypto_shash *parent = pdesc->tfm;
	struct vmac_ctx_t *ctx = FUNC0(parent);

	FUNC1(p, len, &ctx->__vmac_ctx);

	return 0;
}