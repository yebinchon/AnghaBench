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
struct vt_notifier_param {struct vc_data* vc; } ;
struct vc_data {int /*<<< orphan*/  vc_cols; int /*<<< orphan*/  vc_rows; int /*<<< orphan*/  vc_screenbuf; int /*<<< orphan*/  vc_screenbuf_size; int /*<<< orphan*/ * vc_uni_pagedir_loc; } ;
struct TYPE_2__ {struct vc_data* d; int /*<<< orphan*/  SAK_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int MAX_NR_CONSOLES ; 
 unsigned int MAX_NR_USER_CONSOLES ; 
 int /*<<< orphan*/  VT_ALLOCATE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vt_notifier_param*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vc_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vc_SAK ; 
 TYPE_1__* vc_cons ; 
 int /*<<< orphan*/  FUNC8 (struct vc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct vc_data*,unsigned int,int) ; 
 int /*<<< orphan*/  vt_notifier_list ; 

int FUNC11(unsigned int currcons)	/* return 0 on success */
{
	FUNC1();

	if (currcons >= MAX_NR_CONSOLES)
		return -ENXIO;
	if (!vc_cons[currcons].d) {
	    struct vc_data *vc;
	    struct vt_notifier_param param;

	    /* prevent users from taking too much memory */
	    if (currcons >= MAX_NR_USER_CONSOLES && !FUNC3(CAP_SYS_RESOURCE))
	      return -EPERM;

	    /* due to the granularity of kmalloc, we waste some memory here */
	    /* the alloc is done in two steps, to optimize the common situation
	       of a 25x80 console (structsize=216, screenbuf_size=4000) */
	    /* although the numbers above are not valid since long ago, the
	       point is still up-to-date and the comment still has its value
	       even if only as a historical artifact.  --mj, July 1998 */
	    param.vc = vc = FUNC7(sizeof(struct vc_data), GFP_KERNEL);
	    if (!vc)
		return -ENOMEM;
	    vc_cons[currcons].d = vc;
	    FUNC0(&vc_cons[currcons].SAK_work, vc_SAK);
	    FUNC10(vc, currcons, 1);
	    if (!*vc->vc_uni_pagedir_loc)
		FUNC4(vc);
	    vc->vc_screenbuf = FUNC6(vc->vc_screenbuf_size, GFP_KERNEL);
	    if (!vc->vc_screenbuf) {
		FUNC5(vc);
		vc_cons[currcons].d = NULL;
		return -ENOMEM;
	    }
	    FUNC8(vc, vc->vc_rows, vc->vc_cols, 1);
	    FUNC9(currcons);
	    FUNC2(&vt_notifier_list, VT_ALLOCATE, &param);
	}
	return 0;
}