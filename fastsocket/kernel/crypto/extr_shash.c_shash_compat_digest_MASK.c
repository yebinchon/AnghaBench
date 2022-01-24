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
typedef  int /*<<< orphan*/  u8 ;
struct shash_desc {int /*<<< orphan*/  flags; } ;
struct scatterlist {unsigned int offset; int /*<<< orphan*/  length; } ;
struct hash_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 struct shash_desc** FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct shash_desc*,void*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 
 int FUNC7 (struct hash_desc*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct hash_desc*) ; 
 int FUNC9 (struct hash_desc*,struct scatterlist*,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct hash_desc *hdesc, struct scatterlist *sg,
			       unsigned int nbytes, u8 *out)
{
	unsigned int offset = sg->offset;
	int err;

	if (nbytes < FUNC5(sg->length, ((unsigned int)(PAGE_SIZE)) - offset)) {
		struct shash_desc **descp = FUNC0(hdesc->tfm);
		struct shash_desc *desc = *descp;
		void *data;

		desc->flags = hdesc->flags;

		data = FUNC1(FUNC6(sg), 0);
		err = FUNC3(desc, data + offset, nbytes, out);
		FUNC2(data, 0);
		FUNC4(desc->flags);
		goto out;
	}

	err = FUNC8(hdesc);
	if (err)
		goto out;

	err = FUNC9(hdesc, sg, nbytes);
	if (err)
		goto out;

	err = FUNC7(hdesc, out);

out:
	return err;
}