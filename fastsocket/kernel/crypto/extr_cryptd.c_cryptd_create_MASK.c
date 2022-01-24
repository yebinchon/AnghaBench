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
struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct crypto_attr_type {int type; int mask; } ;

/* Variables and functions */
#define  CRYPTO_ALG_TYPE_AEAD 130 
#define  CRYPTO_ALG_TYPE_BLKCIPHER 129 
#define  CRYPTO_ALG_TYPE_DIGEST 128 
 int CRYPTO_ALG_TYPE_MASK ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct crypto_attr_type*) ; 
 int FUNC1 (struct crypto_attr_type*) ; 
 int FUNC2 (struct crypto_template*,struct rtattr**,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct crypto_template*,struct rtattr**,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct crypto_template*,struct rtattr**,int /*<<< orphan*/ *) ; 
 struct crypto_attr_type* FUNC5 (struct rtattr**) ; 
 int /*<<< orphan*/  queue ; 

__attribute__((used)) static int FUNC6(struct crypto_template *tmpl, struct rtattr **tb)
{
	struct crypto_attr_type *algt;

	algt = FUNC5(tb);
	if (FUNC0(algt))
		return FUNC1(algt);

	switch (algt->type & algt->mask & CRYPTO_ALG_TYPE_MASK) {
	case CRYPTO_ALG_TYPE_BLKCIPHER:
		return FUNC3(tmpl, tb, &queue);
	case CRYPTO_ALG_TYPE_DIGEST:
		return FUNC4(tmpl, tb, &queue);
	case CRYPTO_ALG_TYPE_AEAD:
		return FUNC2(tmpl, tb, &queue);
	}

	return -EINVAL;
}