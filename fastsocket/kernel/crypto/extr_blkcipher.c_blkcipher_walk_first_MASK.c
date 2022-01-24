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
struct crypto_blkcipher {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sg; } ;
struct blkcipher_walk {int /*<<< orphan*/ * page; TYPE_1__ out; TYPE_1__ in; scalar_t__ iv; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  total; int /*<<< orphan*/  nbytes; } ;
struct blkcipher_desc {scalar_t__ info; struct crypto_blkcipher* tfm; } ;

/* Variables and functions */
 int EDEADLK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct blkcipher_walk*,struct crypto_blkcipher*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 unsigned int FUNC3 (struct crypto_blkcipher*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long) ; 

__attribute__((used)) static int FUNC7(struct blkcipher_desc *desc,
				struct blkcipher_walk *walk)
{
	struct crypto_blkcipher *tfm = desc->tfm;
	unsigned int alignmask = FUNC3(tfm);

	if (FUNC0(FUNC4()))
		return -EDEADLK;

	walk->nbytes = walk->total;
	if (FUNC6(!walk->total))
		return 0;

	walk->buffer = NULL;
	walk->iv = desc->info;
	if (FUNC6(((unsigned long)walk->iv & alignmask))) {
		int err = FUNC1(walk, tfm, alignmask);
		if (err)
			return err;
	}

	FUNC5(&walk->in, walk->in.sg);
	FUNC5(&walk->out, walk->out.sg);
	walk->page = NULL;

	return FUNC2(desc, walk);
}