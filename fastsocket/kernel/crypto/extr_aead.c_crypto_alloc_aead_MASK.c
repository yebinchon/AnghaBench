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
struct crypto_tfm {int dummy; } ;
typedef  struct crypto_tfm crypto_alg ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int CRYPTO_ALG_GENIV ; 
 int CRYPTO_ALG_TYPE_AEAD ; 
 int CRYPTO_ALG_TYPE_MASK ; 
 int EAGAIN ; 
 int EINTR ; 
 struct crypto_aead* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct crypto_tfm*) ; 
 int FUNC2 (struct crypto_tfm*) ; 
 struct crypto_aead* FUNC3 (struct crypto_tfm*) ; 
 struct crypto_tfm* FUNC4 (struct crypto_tfm*,int,int) ; 
 struct crypto_tfm* FUNC5 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

struct crypto_aead *FUNC8(const char *alg_name, u32 type, u32 mask)
{
	struct crypto_tfm *tfm;
	int err;

	type &= ~(CRYPTO_ALG_TYPE_MASK | CRYPTO_ALG_GENIV);
	type |= CRYPTO_ALG_TYPE_AEAD;
	mask &= ~(CRYPTO_ALG_TYPE_MASK | CRYPTO_ALG_GENIV);
	mask |= CRYPTO_ALG_TYPE_MASK;

	for (;;) {
		struct crypto_alg *alg;

		alg = FUNC5(alg_name, type, mask);
		if (FUNC1(alg)) {
			err = FUNC2(alg);
			goto err;
		}

		tfm = FUNC4(alg, type, mask);
		if (!FUNC1(tfm))
			return FUNC3(tfm);

		FUNC6(alg);
		err = FUNC2(tfm);

err:
		if (err != -EAGAIN)
			break;
		if (FUNC7(current)) {
			err = -EINTR;
			break;
		}
	}

	return FUNC0(err);
}