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
struct crypto_rng {int dummy; } ;
struct TYPE_2__ {int (* rng_reset ) (struct crypto_rng*,int /*<<< orphan*/ *,unsigned int) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (struct crypto_rng*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct crypto_rng*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct crypto_rng *tfm, u8 *seed, unsigned int slen)
{
	u8 *buf = NULL;
	int err;

	if (!seed && slen) {
		buf = FUNC3(slen, GFP_KERNEL);
		if (!buf)
			return -ENOMEM;

		FUNC1(buf, slen);
		seed = buf;
	}

	err = FUNC0(tfm)->rng_reset(tfm, seed, slen);

	FUNC2(buf);
	return err;
}