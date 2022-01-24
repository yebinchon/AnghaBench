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
struct hash_desc {int dummy; } ;
typedef  scalar_t__ cycles_t ;

/* Variables and functions */
 int FUNC0 (struct hash_desc*,struct scatterlist*,int,char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct hash_desc *desc,
				   struct scatterlist *sg, int blen, char *out)
{
	unsigned long cycles = 0;
	int i;
	int ret;

	FUNC2();
	FUNC4();

	/* Warm-up run. */
	for (i = 0; i < 4; i++) {
		ret = FUNC0(desc, sg, blen, out);
		if (ret)
			goto out;
	}

	/* The real thing. */
	for (i = 0; i < 8; i++) {
		cycles_t start, end;

		start = FUNC1();

		ret = FUNC0(desc, sg, blen, out);
		if (ret)
			goto out;

		end = FUNC1();

		cycles += end - start;
	}

out:
	FUNC5();
	FUNC3();

	if (ret)
		return ret;

	FUNC6("%6lu cycles/operation, %4lu cycles/byte\n",
	       cycles / 8, cycles / (8 * blen));

	return 0;
}