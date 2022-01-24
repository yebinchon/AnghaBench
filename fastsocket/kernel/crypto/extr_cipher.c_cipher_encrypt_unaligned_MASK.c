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
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct cipher_alg {int /*<<< orphan*/  (* cia_encrypt ) (struct crypto_tfm*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ;} ;
struct TYPE_2__ {struct cipher_alg cra_cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (struct crypto_tfm*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*),struct crypto_tfm*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 unsigned long FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct crypto_tfm *tfm,
				     u8 *dst, const u8 *src)
{
	unsigned long alignmask = FUNC1(tfm);
	struct cipher_alg *cipher = &tfm->__crt_alg->cra_cipher;

	if (FUNC3(((unsigned long)dst | (unsigned long)src) & alignmask)) {
		FUNC0(cipher->cia_encrypt, tfm, dst, src);
		return;
	}

	cipher->cia_encrypt(tfm, dst, src);
}