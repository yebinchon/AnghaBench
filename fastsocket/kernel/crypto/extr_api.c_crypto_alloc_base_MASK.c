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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_tfm {int dummy; } ;
typedef  struct crypto_tfm crypto_alg ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 struct crypto_tfm* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct crypto_tfm*) ; 
 int FUNC2 (struct crypto_tfm*) ; 
 struct crypto_tfm* FUNC3 (struct crypto_tfm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

struct crypto_tfm *FUNC7(const char *alg_name, u32 type, u32 mask)
{
	struct crypto_tfm *tfm;
	int err;

	for (;;) {
		struct crypto_alg *alg;

		alg = FUNC4(alg_name, type, mask);
		if (FUNC1(alg)) {
			err = FUNC2(alg);
			goto err;
		}

		tfm = FUNC3(alg, type, mask);
		if (!FUNC1(tfm))
			return tfm;

		FUNC5(alg);
		err = FUNC2(tfm);

err:
		if (err != -EAGAIN)
			break;
		if (FUNC6(current)) {
			err = -EINTR;
			break;
		}
	}

	return FUNC0(err);
}