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
struct qib_mr {struct ib_mr ibmr; } ;
struct ib_pd {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qib_mr*) ; 
 struct qib_mr* FUNC1 (int,struct ib_pd*) ; 

struct ib_mr *FUNC2(struct ib_pd *pd, int max_page_list_len)
{
	struct qib_mr *mr;

	mr = FUNC1(max_page_list_len, pd);
	if (FUNC0(mr))
		return (struct ib_mr *)mr;

	return &mr->ibmr;
}