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

/* Variables and functions */
 int HZ ; 
 int FUNC0 (struct hash_desc*,char*) ; 
 int FUNC1 (struct hash_desc*) ; 
 int FUNC2 (struct hash_desc*,struct scatterlist*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (char*,int,long) ; 
 int FUNC4 (struct hash_desc*,struct scatterlist*,int,char*,int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct hash_desc *desc, struct scatterlist *sg,
			     int blen, int plen, char *out, int sec)
{
	unsigned long start, end;
	int bcount, pcount;
	int ret;

	if (plen == blen)
		return FUNC4(desc, sg, blen, out, sec);

	for (start = jiffies, end = start + sec * HZ, bcount = 0;
	     FUNC5(jiffies, end); bcount++) {
		ret = FUNC1(desc);
		if (ret)
			return ret;
		for (pcount = 0; pcount < blen; pcount += plen) {
			ret = FUNC2(desc, sg, plen);
			if (ret)
				return ret;
		}
		/* we assume there is enough space in 'out' for the result */
		ret = FUNC0(desc, out);
		if (ret)
			return ret;
	}

	FUNC3("%6u opers/sec, %9lu bytes/sec\n",
	       bcount / sec, ((long)bcount * blen) / sec);

	return 0;
}