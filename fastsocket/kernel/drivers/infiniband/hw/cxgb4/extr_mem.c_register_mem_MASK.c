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
struct c4iw_pd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pbl_addr; int /*<<< orphan*/  pbl_size; int /*<<< orphan*/  stag; int /*<<< orphan*/  len; int /*<<< orphan*/  va_fbo; int /*<<< orphan*/  zbva; int /*<<< orphan*/  mw_bind_enable; int /*<<< orphan*/  perms; int /*<<< orphan*/  pdid; } ;
struct c4iw_mr {TYPE_1__ attr; } ;
struct c4iw_dev {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_RI_STAG_NSMR ; 
 int /*<<< orphan*/  T4_STAG_UNSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct c4iw_mr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct c4iw_dev *rhp, struct c4iw_pd *php,
		      struct c4iw_mr *mhp, int shift)
{
	u32 stag = T4_STAG_UNSET;
	int ret;

	ret = FUNC2(&rhp->rdev, 0, &stag, 1, mhp->attr.pdid,
			      FW_RI_STAG_NSMR, mhp->attr.perms,
			      mhp->attr.mw_bind_enable, mhp->attr.zbva,
			      mhp->attr.va_fbo, mhp->attr.len, shift - 12,
			      mhp->attr.pbl_size, mhp->attr.pbl_addr);
	if (ret)
		return ret;

	ret = FUNC1(mhp, stag);
	if (ret)
		FUNC0(&rhp->rdev, mhp->attr.stag, mhp->attr.pbl_size,
		       mhp->attr.pbl_addr);
	return ret;
}