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
struct zlib_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 struct zlib_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (struct zlib_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct zlib_ctx*) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm)
{
	struct zlib_ctx *ctx = FUNC0(tfm);

	FUNC1(ctx);
	FUNC2(ctx);
}