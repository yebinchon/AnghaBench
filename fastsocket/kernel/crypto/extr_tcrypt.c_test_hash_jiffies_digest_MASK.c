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
 int FUNC0 (struct hash_desc*,struct scatterlist*,int,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (char*,int,long) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct hash_desc *desc,
				    struct scatterlist *sg, int blen,
				    char *out, int sec)
{
	unsigned long start, end;
	int bcount;
	int ret;

	for (start = jiffies, end = start + sec * HZ, bcount = 0;
	     FUNC2(jiffies, end); bcount++) {
		ret = FUNC0(desc, sg, blen, out);
		if (ret)
			return ret;
	}

	FUNC1("%6u opers/sec, %9lu bytes/sec\n",
	       bcount / sec, ((long)bcount * blen) / sec);

	return 0;
}