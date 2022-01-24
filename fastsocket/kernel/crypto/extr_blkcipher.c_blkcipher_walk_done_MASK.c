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
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_walk {int nbytes; int flags; unsigned int total; scalar_t__ iv; scalar_t__ buffer; scalar_t__ page; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct blkcipher_desc {scalar_t__ info; int /*<<< orphan*/  flags; struct crypto_blkcipher* tfm; } ;

/* Variables and functions */
 int BLKCIPHER_WALK_SLOW ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct blkcipher_walk*,unsigned int) ; 
 unsigned int FUNC2 (struct crypto_blkcipher*,struct blkcipher_walk*,unsigned int) ; 
 int FUNC3 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_blkcipher*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,unsigned int) ; 

int FUNC11(struct blkcipher_desc *desc,
			struct blkcipher_walk *walk, int err)
{
	struct crypto_blkcipher *tfm = desc->tfm;
	unsigned int nbytes = 0;

	if (FUNC8(err >= 0)) {
		unsigned int n = walk->nbytes - err;

		if (FUNC8(!(walk->flags & BLKCIPHER_WALK_SLOW)))
			n = FUNC1(walk, n);
		else if (FUNC0(err)) {
			err = -EINVAL;
			goto err;
		} else
			n = FUNC2(tfm, walk, n);

		nbytes = walk->total - n;
		err = 0;
	}

	FUNC10(&walk->in, 0, nbytes);
	FUNC10(&walk->out, 1, nbytes);

err:
	walk->total = nbytes;
	walk->nbytes = nbytes;

	if (nbytes) {
		FUNC5(desc->flags);
		return FUNC3(desc, walk);
	}

	if (walk->iv != desc->info)
		FUNC9(desc->info, walk->iv, FUNC4(tfm));
	if (walk->buffer != walk->page)
		FUNC7(walk->buffer);
	if (walk->page)
		FUNC6((unsigned long)walk->page);

	return err;
}