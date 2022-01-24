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
struct shash_desc {int /*<<< orphan*/  flags; } ;
struct scatterlist {unsigned int offset; int /*<<< orphan*/  length; } ;
struct ahash_request {unsigned int nbytes; int /*<<< orphan*/  result; struct scatterlist* src; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct shash_desc*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct shash_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 
 int FUNC7 (struct ahash_request*,struct shash_desc*) ; 

int FUNC8(struct ahash_request *req, struct shash_desc *desc)
{
	struct scatterlist *sg = req->src;
	unsigned int offset = sg->offset;
	unsigned int nbytes = req->nbytes;
	int err;

	if (nbytes < FUNC5(sg->length, ((unsigned int)(PAGE_SIZE)) - offset)) {
		void *data;

		data = FUNC0(FUNC6(sg), 0);
		err = FUNC2(desc, data + offset, nbytes,
					  req->result);
		FUNC1(data, 0);
		FUNC4(desc->flags);
	} else
		err = FUNC3(desc) ?:
		      FUNC7(req, desc);

	return err;
}