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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ehca_mr_pginfo {int type; int /*<<< orphan*/  hwpage_size; } ;

/* Variables and functions */
 int EFAULT ; 
#define  EHCA_MR_PGI_FMR 130 
#define  EHCA_MR_PGI_PHYS 129 
#define  EHCA_MR_PGI_USER 128 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct ehca_mr_pginfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ehca_mr_pginfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ehca_mr_pginfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ehca_mr_pginfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct ehca_mr_pginfo *pginfo,
		     u32 number,
		     u64 *kpage)
{
	int ret;

	switch (pginfo->type) {
	case EHCA_MR_PGI_PHYS:
		ret = FUNC2(pginfo, number, kpage);
		break;
	case EHCA_MR_PGI_USER:
		ret = PAGE_SIZE >= pginfo->hwpage_size ?
			FUNC3(pginfo, number, kpage) :
			FUNC4(pginfo, number, kpage);
		break;
	case EHCA_MR_PGI_FMR:
		ret = FUNC1(pginfo, number, kpage);
		break;
	default:
		FUNC0("bad pginfo->type=%x", pginfo->type);
		ret = -EFAULT;
		break;
	}
	return ret;
}