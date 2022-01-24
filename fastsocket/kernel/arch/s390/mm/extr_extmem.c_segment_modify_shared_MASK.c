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
struct dcss_segment {int do_nonshared; scalar_t__ vm_segtype; unsigned long start_addr; unsigned long end; int /*<<< orphan*/  dcss_name; int /*<<< orphan*/  list; struct dcss_segment* res; int /*<<< orphan*/  flags; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_READONLY ; 
 scalar_t__ SEG_TYPE_ER ; 
 scalar_t__ SEG_TYPE_SR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  dcss_lock ; 
 int /*<<< orphan*/  iomem_resource ; 
 int /*<<< orphan*/  FUNC3 (struct dcss_segment*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  loadnsr_scode ; 
 int /*<<< orphan*/  loadshr_scode ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 int /*<<< orphan*/  purgeseg_scode ; 
 int /*<<< orphan*/  FUNC9 (struct dcss_segment*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct dcss_segment*) ; 
 struct dcss_segment* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,unsigned long) ; 

int
FUNC13 (char *name, int do_nonshared)
{
	struct dcss_segment *seg;
	unsigned long start_addr, end_addr, dummy;
	int rc, diag_cc;

	FUNC5(&dcss_lock);
	seg = FUNC11 (name);
	if (seg == NULL) {
		rc = -EINVAL;
		goto out_unlock;
	}
	if (do_nonshared == seg->do_nonshared) {
		FUNC7("DCSS %s is already in the requested access "
			"mode\n", name);
		rc = 0;
		goto out_unlock;
	}
	if (FUNC0 (&seg->ref_count) != 1) {
		FUNC8("DCSS %s is in use and cannot be reloaded\n",
			   name);
		rc = -EAGAIN;
		goto out_unlock;
	}
	FUNC9(seg->res);
	if (do_nonshared)
		seg->res->flags &= ~IORESOURCE_READONLY;
	else
		if (seg->vm_segtype == SEG_TYPE_SR ||
		    seg->vm_segtype == SEG_TYPE_ER)
			seg->res->flags |= IORESOURCE_READONLY;

	if (FUNC10(&iomem_resource, seg->res)) {
		FUNC8("DCSS %s overlaps with used memory resources "
			   "and cannot be reloaded\n", name);
		rc = -EBUSY;
		FUNC3(seg->res);
		goto out_del_mem;
	}

	FUNC1(&purgeseg_scode, seg->dcss_name, &dummy, &dummy);
	if (do_nonshared)
		diag_cc = FUNC1(&loadnsr_scode, seg->dcss_name,
				&start_addr, &end_addr);
	else
		diag_cc = FUNC1(&loadshr_scode, seg->dcss_name,
				&start_addr, &end_addr);
	if (diag_cc < 0) {
		rc = diag_cc;
		goto out_del_res;
	}
	if (diag_cc > 1) {
		FUNC8("Reloading DCSS %s failed with rc=%ld\n", name,
			   end_addr);
		rc = FUNC2(end_addr);
		goto out_del_res;
	}
	seg->start_addr = start_addr;
	seg->end = end_addr;
	seg->do_nonshared = do_nonshared;
	rc = 0;
	goto out_unlock;
 out_del_res:
	FUNC9(seg->res);
	FUNC3(seg->res);
 out_del_mem:
	FUNC12(seg->start_addr, seg->end - seg->start_addr + 1);
	FUNC4(&seg->list);
	FUNC1(&purgeseg_scode, seg->dcss_name, &dummy, &dummy);
	FUNC3(seg);
 out_unlock:
	FUNC6(&dcss_lock);
	return rc;
}