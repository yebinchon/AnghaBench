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
 int FUNC0 (struct hash_desc*,char*) ; 
 int FUNC1 (struct hash_desc*) ; 
 int FUNC2 (struct hash_desc*,struct scatterlist*,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long,unsigned long) ; 
 int FUNC9 (struct hash_desc*,struct scatterlist*,int,char*) ; 

__attribute__((used)) static int FUNC10(struct hash_desc *desc, struct scatterlist *sg,
			    int blen, int plen, char *out)
{
	unsigned long cycles = 0;
	int i, pcount;
	int ret;

	if (plen == blen)
		return FUNC9(desc, sg, blen, out);

	FUNC4();
	FUNC6();

	/* Warm-up run. */
	for (i = 0; i < 4; i++) {
		ret = FUNC1(desc);
		if (ret)
			goto out;
		for (pcount = 0; pcount < blen; pcount += plen) {
			ret = FUNC2(desc, sg, plen);
			if (ret)
				goto out;
		}
		ret = FUNC0(desc, out);
		if (ret)
			goto out;
	}

	/* The real thing. */
	for (i = 0; i < 8; i++) {
		cycles_t start, end;

		start = FUNC3();

		ret = FUNC1(desc);
		if (ret)
			goto out;
		for (pcount = 0; pcount < blen; pcount += plen) {
			ret = FUNC2(desc, sg, plen);
			if (ret)
				goto out;
		}
		ret = FUNC0(desc, out);
		if (ret)
			goto out;

		end = FUNC3();

		cycles += end - start;
	}

out:
	FUNC7();
	FUNC5();

	if (ret)
		return ret;

	FUNC8("%6lu cycles/operation, %4lu cycles/byte\n",
	       cycles / 8, cycles / (8 * blen));

	return 0;
}