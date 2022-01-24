#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpi_limb_t ;
struct TYPE_3__ {unsigned int alloced; void* d; } ;
typedef  TYPE_1__* MPI ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 

int FUNC4(MPI a, unsigned nlimbs)
{
	void *p;

	if (nlimbs <= a->alloced)
		return 0; /* no need to do it */

	if (a->d) {
		p = FUNC1(nlimbs * sizeof(mpi_limb_t), GFP_KERNEL);
		if (!p)
			return -ENOMEM;
		FUNC3(p, a->d, a->alloced * sizeof(mpi_limb_t));
		FUNC0(a->d);
		a->d = p;
	} else {
		a->d = FUNC2( nlimbs * sizeof(mpi_limb_t), GFP_KERNEL);
		if (!a->d)
			return -ENOMEM;
	}
	a->alloced = nlimbs;
	return 0;
}