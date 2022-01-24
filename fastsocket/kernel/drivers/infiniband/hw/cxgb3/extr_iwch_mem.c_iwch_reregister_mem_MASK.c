#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct iwch_pd {int dummy; } ;
struct TYPE_2__ {int pbl_size; int /*<<< orphan*/  pbl_addr; int /*<<< orphan*/  stag; int /*<<< orphan*/  len; int /*<<< orphan*/  va_fbo; int /*<<< orphan*/  zbva; int /*<<< orphan*/  perms; int /*<<< orphan*/  pdid; } ;
struct iwch_mr {TYPE_1__ attr; } ;
struct iwch_dev {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwch_mr*,int /*<<< orphan*/ ) ; 

int FUNC3(struct iwch_dev *rhp, struct iwch_pd *php,
					struct iwch_mr *mhp,
					int shift,
					int npages)
{
	u32 stag;
	int ret;

	/* We could support this... */
	if (npages > mhp->attr.pbl_size)
		return -ENOMEM;

	stag = mhp->attr.stag;
	if (FUNC1(&rhp->rdev,
				   &stag, mhp->attr.pdid,
				   mhp->attr.perms,
				   mhp->attr.zbva,
				   mhp->attr.va_fbo,
				   mhp->attr.len,
				   shift - 12,
				   mhp->attr.pbl_size, mhp->attr.pbl_addr))
		return -ENOMEM;

	ret = FUNC2(mhp, stag);
	if (ret)
		FUNC0(&rhp->rdev, mhp->attr.stag, mhp->attr.pbl_size,
		       mhp->attr.pbl_addr);

	return ret;
}