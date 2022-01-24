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
struct iova_domain {int dummy; } ;
struct iova {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iova_domain*,unsigned long,unsigned long,struct iova*,int) ; 
 unsigned long FUNC1 (unsigned long) ; 
 struct iova* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct iova*) ; 

struct iova *
FUNC4(struct iova_domain *iovad, unsigned long size,
	unsigned long limit_pfn,
	bool size_aligned)
{
	struct iova *new_iova;
	int ret;

	new_iova = FUNC2();
	if (!new_iova)
		return NULL;

	/* If size aligned is set then round the size to
	 * to next power of two.
	 */
	if (size_aligned)
		size = FUNC1(size);

	ret = FUNC0(iovad, size, limit_pfn,
			new_iova, size_aligned);

	if (ret) {
		FUNC3(new_iova);
		return NULL;
	}

	return new_iova;
}