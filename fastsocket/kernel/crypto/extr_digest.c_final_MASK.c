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
struct hash_desc {int /*<<< orphan*/  tfm; } ;
struct digest_alg {int /*<<< orphan*/  (* dia_final ) (struct crypto_tfm*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  dia_digestsize; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct TYPE_2__ {unsigned long cra_ctxsize; struct digest_alg cra_digest; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long) ; 
 struct crypto_tfm* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct crypto_tfm*) ; 
 scalar_t__ FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_tfm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_tfm*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (unsigned long) ; 

__attribute__((used)) static int FUNC8(struct hash_desc *desc, u8 *out)
{
	struct crypto_tfm *tfm = FUNC1(desc->tfm);
	unsigned long alignmask = FUNC2(tfm);
	struct digest_alg *digest = &tfm->__crt_alg->cra_digest;

	if (FUNC7((unsigned long)out & alignmask)) {
		unsigned long align = alignmask + 1;
		unsigned long addr = (unsigned long)FUNC3(tfm);
		u8 *dst = (u8 *)FUNC0(addr, align) +
			  FUNC0(tfm->__crt_alg->cra_ctxsize, align);

		digest->dia_final(tfm, dst);
		FUNC4(out, dst, digest->dia_digestsize);
	} else
		digest->dia_final(tfm, out);

	return 0;
}