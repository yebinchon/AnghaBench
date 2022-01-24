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
struct ib_mr {int dummy; } ;
struct ocrdma_mr {struct ib_mr ibmr; } ;
struct ib_pd {int dummy; } ;

/* Variables and functions */
 struct ib_mr* FUNC0 (struct ocrdma_mr*) ; 
 scalar_t__ FUNC1 (struct ocrdma_mr*) ; 
 int /*<<< orphan*/  OCRDMA_ADDR_CHECK_DISABLE ; 
 struct ocrdma_mr* FUNC2 (struct ib_pd*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ib_mr *FUNC3(struct ib_pd *ibpd, int acc)
{
	struct ocrdma_mr *mr;

	mr = FUNC2(ibpd, acc, 0, OCRDMA_ADDR_CHECK_DISABLE);
	if (FUNC1(mr))
		return FUNC0(mr);

	return &mr->ibmr;
}