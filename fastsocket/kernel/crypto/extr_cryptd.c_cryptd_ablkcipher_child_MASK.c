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
struct crypto_blkcipher {int dummy; } ;
struct cryptd_blkcipher_ctx {struct crypto_blkcipher* child; } ;
struct cryptd_ablkcipher {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 struct cryptd_blkcipher_ctx* FUNC0 (int /*<<< orphan*/ *) ; 

struct crypto_blkcipher *FUNC1(struct cryptd_ablkcipher *tfm)
{
	struct cryptd_blkcipher_ctx *ctx = FUNC0(&tfm->base);
	return ctx->child;
}