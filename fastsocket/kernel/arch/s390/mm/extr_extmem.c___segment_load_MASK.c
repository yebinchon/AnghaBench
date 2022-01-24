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
struct resource {int dummy; } ;
struct dcss_segment {unsigned long start_addr; unsigned long end; int flags; unsigned long start; char* res_name; char* name; int vm_segtype; int do_nonshared; struct dcss_segment* res; int /*<<< orphan*/  list; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  dcss_name; } ;

/* Variables and functions */
 scalar_t__ DCSS_LOADSHRX ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_DMA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IORESOURCE_BUSY ; 
 int IORESOURCE_MEM ; 
 int IORESOURCE_READONLY ; 
 int SEG_TYPE_ER ; 
 int SEG_TYPE_SC ; 
 int SEG_TYPE_SR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (scalar_t__*,int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  dcss_list ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iomem_resource ; 
 int /*<<< orphan*/  FUNC5 (struct dcss_segment*) ; 
 struct dcss_segment* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct dcss_segment* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ loadnsr_scode ; 
 scalar_t__ loadshr_scode ; 
 int /*<<< orphan*/  FUNC9 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,unsigned long) ; 
 scalar_t__ purgeseg_scode ; 
 int FUNC12 (struct dcss_segment*) ; 
 int /*<<< orphan*/  FUNC13 (struct dcss_segment*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,struct dcss_segment*) ; 
 scalar_t__ FUNC15 (struct dcss_segment*) ; 
 int /*<<< orphan*/ * segtype_string ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int FUNC17 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC19 (char *name, int do_nonshared, unsigned long *addr, unsigned long *end)
{
	struct dcss_segment *seg = FUNC6(sizeof(struct dcss_segment),
			GFP_DMA);
	int rc, diag_cc;
	unsigned long start_addr, end_addr, dummy;

	if (seg == NULL) {
		rc = -ENOMEM;
		goto out;
	}
	FUNC4 (name, seg->dcss_name);
	rc = FUNC12 (seg);
	if (rc < 0)
		goto out_free;

	if (loadshr_scode == DCSS_LOADSHRX) {
		if (FUNC15(seg)) {
			rc = -EBUSY;
			goto out_free;
		}
	}

	rc = FUNC17(seg->start_addr, seg->end - seg->start_addr + 1);

	if (rc)
		goto out_free;

	seg->res = FUNC7(sizeof(struct resource), GFP_KERNEL);
	if (seg->res == NULL) {
		rc = -ENOMEM;
		goto out_shared;
	}
	seg->res->flags = IORESOURCE_BUSY | IORESOURCE_MEM;
	seg->res->start = seg->start_addr;
	seg->res->end = seg->end;
	FUNC9(&seg->res_name, seg->dcss_name, 8);
	FUNC0(seg->res_name, 8);
	seg->res_name[8] = '\0';
	FUNC16(seg->res_name, " (DCSS)", 7);
	seg->res->name = seg->res_name;
	rc = seg->vm_segtype;
	if (rc == SEG_TYPE_SC ||
	    ((rc == SEG_TYPE_SR || rc == SEG_TYPE_ER) && !do_nonshared))
		seg->res->flags |= IORESOURCE_READONLY;
	if (FUNC14(&iomem_resource, seg->res)) {
		rc = -EBUSY;
		FUNC5(seg->res);
		goto out_shared;
	}

	if (do_nonshared)
		diag_cc = FUNC2(&loadnsr_scode, seg->dcss_name,
				&start_addr, &end_addr);
	else
		diag_cc = FUNC2(&loadshr_scode, seg->dcss_name,
				&start_addr, &end_addr);
	if (diag_cc < 0) {
		FUNC2(&purgeseg_scode, seg->dcss_name,
				&dummy, &dummy);
		rc = diag_cc;
		goto out_resource;
	}
	if (diag_cc > 1) {
		FUNC11("Loading DCSS %s failed with rc=%ld\n", name,
			   end_addr);
		rc = FUNC3(end_addr);
		FUNC2(&purgeseg_scode, seg->dcss_name,
				&dummy, &dummy);
		goto out_resource;
	}
	seg->start_addr = start_addr;
	seg->end = end_addr;
	seg->do_nonshared = do_nonshared;
	FUNC1(&seg->ref_count, 1);
	FUNC8(&seg->list, &dcss_list);
	*addr = seg->start_addr;
	*end  = seg->end;
	if (do_nonshared)
		FUNC10("DCSS %s of range %p to %p and type %s loaded as "
			"exclusive-writable\n", name, (void*) seg->start_addr,
			(void*) seg->end, segtype_string[seg->vm_segtype]);
	else {
		FUNC10("DCSS %s of range %p to %p and type %s loaded in "
			"shared access mode\n", name, (void*) seg->start_addr,
			(void*) seg->end, segtype_string[seg->vm_segtype]);
	}
	goto out;
 out_resource:
	FUNC13(seg->res);
	FUNC5(seg->res);
 out_shared:
	FUNC18(seg->start_addr, seg->end - seg->start_addr + 1);
 out_free:
	FUNC5(seg);
 out:
	return rc;
}