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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  encrypt; } ;
struct aes_ctx {TYPE_1__ cword; int /*<<< orphan*/  E; } ;

/* Variables and functions */
 struct aes_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	struct aes_ctx *ctx = FUNC0(tfm);
	int ts_state;

	FUNC4(&ctx->cword.encrypt);
	ts_state = FUNC3();
	FUNC1(in, out, ctx->E, &ctx->cword.encrypt, 1);
	FUNC2(ts_state);
	FUNC5(&ctx->cword.encrypt);
}