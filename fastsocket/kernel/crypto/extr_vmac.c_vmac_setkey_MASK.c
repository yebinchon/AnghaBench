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
struct vmac_ctx_t {int dummy; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 unsigned int VMAC_KEY_LEN ; 
 struct vmac_ctx_t* FUNC0 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_shash*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct vmac_ctx_t*) ; 

__attribute__((used)) static int FUNC3(struct crypto_shash *parent,
		const u8 *key, unsigned int keylen)
{
	struct vmac_ctx_t *ctx = FUNC0(parent);

	if (keylen != VMAC_KEY_LEN) {
		FUNC1(parent, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	return FUNC2((u8 *)key, ctx);
}