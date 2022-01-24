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

/* Variables and functions */
 int FUNC0 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC1(struct scatterlist *sg, int num_sg)
{
	int count;
	int i;

	count = 0;
	for (i = 0; i < num_sg; i++) {
		int err = FUNC0(sg + i);
		if (err < 0)
			return err;
		count += err;
	}

	return count;
}