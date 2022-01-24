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

/* Variables and functions */
 int HZ ; 
 int FUNC0 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int FUNC1 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct blkcipher_desc *desc, int enc,
			       struct scatterlist *sg, int blen, int sec)
{
	unsigned long start, end;
	int bcount;
	int ret;

	for (start = jiffies, end = start + sec * HZ, bcount = 0;
	     FUNC3(jiffies, end); bcount++) {
		if (enc)
			ret = FUNC1(desc, sg, sg, blen);
		else
			ret = FUNC0(desc, sg, sg, blen);

		if (ret)
			return ret;
	}

	FUNC2("%d operations in %d seconds (%ld bytes)\n",
	       bcount, sec, (long)bcount * blen);
	return 0;
}