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
struct salsa20_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 struct salsa20_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (struct salsa20_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct crypto_tfm *tfm, const u8 *key,
		  unsigned int keysize)
{
	struct salsa20_ctx *ctx = FUNC0(tfm);
	FUNC1(ctx, key, keysize);
	return 0;
}