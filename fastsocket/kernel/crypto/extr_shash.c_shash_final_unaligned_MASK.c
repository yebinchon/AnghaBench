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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 struct shash_alg* FUNC1 (struct crypto_shash*) ; 
 unsigned long FUNC2 (struct crypto_shash*) ; 
 unsigned int FUNC3 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (unsigned int,unsigned long) ; 
 int FUNC7 (struct shash_desc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct shash_desc *desc, u8 *out)
{
	struct crypto_shash *tfm = desc->tfm;
	unsigned long alignmask = FUNC2(tfm);
	struct shash_alg *shash = FUNC1(tfm);
	unsigned int ds = FUNC3(tfm);
	u8 ubuf[FUNC6(ds, alignmask)]
		__attribute__ ((aligned));
	u8 *buf = FUNC0(&ubuf[0], alignmask + 1);
	int err;

	err = shash->final(desc, buf);
	if (err)
		goto out;

	FUNC4(out, buf, ds);

out:
	FUNC5(buf, 0, ds);
	return err;
}