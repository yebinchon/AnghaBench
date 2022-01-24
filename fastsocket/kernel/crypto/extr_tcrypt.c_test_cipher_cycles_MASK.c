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
struct blkcipher_desc {int dummy; } ;
typedef  scalar_t__ cycles_t ;

/* Variables and functions */
 int FUNC0 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int FUNC1 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long,int) ; 

__attribute__((used)) static int FUNC8(struct blkcipher_desc *desc, int enc,
			      struct scatterlist *sg, int blen)
{
	unsigned long cycles = 0;
	int ret = 0;
	int i;

	FUNC3();
	FUNC5();

	/* Warm-up run. */
	for (i = 0; i < 4; i++) {
		if (enc)
			ret = FUNC1(desc, sg, sg, blen);
		else
			ret = FUNC0(desc, sg, sg, blen);

		if (ret)
			goto out;
	}

	/* The real thing. */
	for (i = 0; i < 8; i++) {
		cycles_t start, end;

		start = FUNC2();
		if (enc)
			ret = FUNC1(desc, sg, sg, blen);
		else
			ret = FUNC0(desc, sg, sg, blen);
		end = FUNC2();

		if (ret)
			goto out;

		cycles += end - start;
	}

out:
	FUNC6();
	FUNC4();

	if (ret == 0)
		FUNC7("1 operation in %lu cycles (%d bytes)\n",
		       (cycles + 4) / 8, blen);

	return ret;
}