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
typedef  int u32 ;
struct crypto_tfm {int cra_flags; } ;
struct crypto_spawn {int dummy; } ;
struct crypto_alg {int cra_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct crypto_tfm* FUNC0 (struct crypto_tfm*) ; 
 struct crypto_tfm* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct crypto_tfm*) ; 
 struct crypto_tfm* FUNC3 (struct crypto_tfm*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_tfm*) ; 
 struct crypto_tfm* FUNC5 (struct crypto_spawn*) ; 
 scalar_t__ FUNC6 (int) ; 

struct crypto_tfm *FUNC7(struct crypto_spawn *spawn, u32 type,
				    u32 mask)
{
	struct crypto_alg *alg;
	struct crypto_tfm *tfm;

	alg = FUNC5(spawn);
	if (FUNC2(alg))
		return FUNC0(alg);

	tfm = FUNC1(-EINVAL);
	if (FUNC6((alg->cra_flags ^ type) & mask))
		goto out_put_alg;

	tfm = FUNC3(alg, type, mask);
	if (FUNC2(tfm))
		goto out_put_alg;

	return tfm;

out_put_alg:
	FUNC4(alg);
	return tfm;
}