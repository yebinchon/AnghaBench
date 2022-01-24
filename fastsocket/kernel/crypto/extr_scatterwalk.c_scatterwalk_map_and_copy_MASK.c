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
struct scatterlist {unsigned int length; } ;
struct scatter_walk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatter_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct scatter_walk*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatter_walk*,int,int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC3 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatter_walk*,struct scatterlist*) ; 

void FUNC5(void *buf, struct scatterlist *sg,
			      unsigned int start, unsigned int nbytes, int out)
{
	struct scatter_walk walk;
	unsigned int offset = 0;

	if (!nbytes)
		return;

	for (;;) {
		FUNC4(&walk, sg);

		if (start < offset + sg->length)
			break;

		offset += sg->length;
		sg = FUNC3(sg);
	}

	FUNC0(&walk, start - offset);
	FUNC1(buf, &walk, nbytes, out);
	FUNC2(&walk, out, 0);
}