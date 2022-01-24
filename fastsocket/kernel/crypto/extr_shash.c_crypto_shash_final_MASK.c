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
struct shash_desc {struct crypto_shash* tfm; } ;
struct shash_alg {int (* final ) (struct shash_desc*,int /*<<< orphan*/ *) ;} ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 struct shash_alg* FUNC0 (struct crypto_shash*) ; 
 unsigned long FUNC1 (struct crypto_shash*) ; 
 int FUNC2 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct shash_desc*,int /*<<< orphan*/ *) ; 

int FUNC4(struct shash_desc *desc, u8 *out)
{
	struct crypto_shash *tfm = desc->tfm;
	struct shash_alg *shash = FUNC0(tfm);
	unsigned long alignmask = FUNC1(tfm);

	if ((unsigned long)out & alignmask)
		return FUNC2(desc, out);

	return shash->final(desc, out);
}