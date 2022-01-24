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
struct stlibrd {int state; scalar_t__ iosize; int /*<<< orphan*/  iobase; int /*<<< orphan*/  membase; } ;

/* Variables and functions */
 int BST_PROBED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stlibrd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct stlibrd** stli_brds ; 
 int /*<<< orphan*/  FUNC3 (struct stlibrd*) ; 
 unsigned int stli_nrbrds ; 

__attribute__((used)) static void FUNC4(void)
{
	struct stlibrd	*brdp;
	unsigned int j;

	for (j = 0; (j < stli_nrbrds); j++) {
		if ((brdp = stli_brds[j]) == NULL || (brdp->state & BST_PROBED))
			continue;

		FUNC3(brdp);

		FUNC0(brdp->membase);
		if (brdp->iosize > 0)
			FUNC2(brdp->iobase, brdp->iosize);
		FUNC1(brdp);
		stli_brds[j] = NULL;
	}
}