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
struct crypto_tfm {int dummy; } ;
struct crypto_shash {int /*<<< orphan*/  descsize; } ;
struct TYPE_2__ {int /*<<< orphan*/  descsize; } ;

/* Variables and functions */
 struct crypto_shash* FUNC0 (struct crypto_tfm*) ; 
 TYPE_1__* FUNC1 (struct crypto_shash*) ; 

__attribute__((used)) static int FUNC2(struct crypto_tfm *tfm)
{
	struct crypto_shash *hash = FUNC0(tfm);

	hash->descsize = FUNC1(hash)->descsize;
	return 0;
}