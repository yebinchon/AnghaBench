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
struct scatterlist {int dummy; } ;
struct blkcipher_walk {unsigned int nbytes; } ;
struct blkcipher_desc {int dummy; } ;
typedef  int /*<<< orphan*/  common_glue_func_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/  const,struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int FUNC1 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC3 (struct blkcipher_desc*,struct blkcipher_walk*) ; 

int FUNC4(const common_glue_func_t fn,
			    struct blkcipher_desc *desc,
			    struct scatterlist *dst,
			    struct scatterlist *src, unsigned int nbytes)
{
	struct blkcipher_walk walk;
	int err;

	FUNC2(&walk, dst, src, nbytes);
	err = FUNC3(desc, &walk);

	while ((nbytes = walk.nbytes)) {
		nbytes = FUNC0(fn, desc, &walk);
		err = FUNC1(desc, &walk, nbytes);
	}

	return err;
}