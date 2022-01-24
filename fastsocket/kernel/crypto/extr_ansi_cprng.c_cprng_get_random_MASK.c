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
struct prng_context {int dummy; } ;
struct crypto_rng {int dummy; } ;

/* Variables and functions */
 struct prng_context* FUNC0 (struct crypto_rng*) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int,struct prng_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct crypto_rng *tfm, u8 *rdata,
			    unsigned int dlen)
{
	struct prng_context *prng = FUNC0(tfm);

	return FUNC1(rdata, dlen, prng, 0);
}