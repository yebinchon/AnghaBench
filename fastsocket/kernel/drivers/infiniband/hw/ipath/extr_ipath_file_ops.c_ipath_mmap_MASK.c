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
typedef  unsigned int u64 ;
struct vm_area_struct {unsigned int vm_pgoff; scalar_t__ vm_start; scalar_t__ vm_end; int /*<<< orphan*/ * vm_private_data; } ;
struct ipath_portdata {int port_port; unsigned int port_subport_cnt; unsigned int port_piocnt; unsigned int port_piobufs; unsigned int port_rcvegr_phys; void* port_rcvhdrq; void* port_rcvhdrtail_kvaddr; scalar_t__ port_rcvhdrqtailaddr_phys; int /*<<< orphan*/  port_rcvhdrq_size; scalar_t__ port_rcvhdrq_phys; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {unsigned int ipath_uregbase; int ipath_ureg_align; unsigned int ipath_palign; unsigned int ipath_pioavailregs_phys; TYPE_1__* pcidev; scalar_t__ ipath_pioavailregs_dma; int /*<<< orphan*/  ipath_unit; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MM ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct vm_area_struct*,struct ipath_portdata*,int /*<<< orphan*/ ,int,void*,char*) ; 
 int FUNC3 (struct vm_area_struct*,unsigned int,struct ipath_portdata*,int) ; 
 int FUNC4 (struct vm_area_struct*,struct ipath_devdata*,struct ipath_portdata*,unsigned int,unsigned int) ; 
 int FUNC5 (struct vm_area_struct*,struct ipath_portdata*) ; 
 int FUNC6 (struct vm_area_struct*,struct ipath_devdata*,unsigned int) ; 
 struct ipath_portdata* FUNC7 (struct file*) ; 
 int FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *fp, struct vm_area_struct *vma)
{
	struct ipath_portdata *pd;
	struct ipath_devdata *dd;
	u64 pgaddr, ureg;
	unsigned piobufs, piocnt;
	int ret;

	pd = FUNC7(fp);
	if (!pd) {
		ret = -EINVAL;
		goto bail;
	}
	dd = pd->port_dd;

	/*
	 * This is the ipath_do_user_init() code, mapping the shared buffers
	 * into the user process. The address referred to by vm_pgoff is the
	 * file offset passed via mmap().  For shared ports, this is the
	 * kernel vmalloc() address of the pages to share with the master.
	 * For non-shared or master ports, this is a physical address.
	 * We only do one mmap for each space mapped.
	 */
	pgaddr = vma->vm_pgoff << PAGE_SHIFT;

	/*
	 * Check for 0 in case one of the allocations failed, but user
	 * called mmap anyway.
	 */
	if (!pgaddr)  {
		ret = -EINVAL;
		goto bail;
	}

	FUNC1(MM, "pgaddr %llx vm_start=%lx len %lx port %u:%u:%u\n",
		   (unsigned long long) pgaddr, vma->vm_start,
		   vma->vm_end - vma->vm_start, dd->ipath_unit,
		   pd->port_port, FUNC8(fp));

	/*
	 * Physical addresses must fit in 40 bits for our hardware.
	 * Check for kernel virtual addresses first, anything else must
	 * match a HW or memory address.
	 */
	ret = FUNC3(vma, pgaddr, pd, FUNC8(fp));
	if (ret) {
		if (ret > 0)
			ret = 0;
		goto bail;
	}

	ureg = dd->ipath_uregbase + dd->ipath_ureg_align * pd->port_port;
	if (!pd->port_subport_cnt) {
		/* port is not shared */
		piocnt = pd->port_piocnt;
		piobufs = pd->port_piobufs;
	} else if (!FUNC8(fp)) {
		/* caller is the master */
		piocnt = (pd->port_piocnt / pd->port_subport_cnt) +
			 (pd->port_piocnt % pd->port_subport_cnt);
		piobufs = pd->port_piobufs +
			dd->ipath_palign * (pd->port_piocnt - piocnt);
	} else {
		unsigned slave = FUNC8(fp) - 1;

		/* caller is a slave */
		piocnt = pd->port_piocnt / pd->port_subport_cnt;
		piobufs = pd->port_piobufs + dd->ipath_palign * piocnt * slave;
	}

	if (pgaddr == ureg)
		ret = FUNC6(vma, dd, ureg);
	else if (pgaddr == piobufs)
		ret = FUNC4(vma, dd, pd, piobufs, piocnt);
	else if (pgaddr == dd->ipath_pioavailregs_phys)
		/* in-memory copy of pioavail registers */
		ret = FUNC2(vma, pd, PAGE_SIZE, 0,
			      	     (void *) dd->ipath_pioavailregs_dma,
				     "pioavail registers");
	else if (pgaddr == pd->port_rcvegr_phys)
		ret = FUNC5(vma, pd);
	else if (pgaddr == (u64) pd->port_rcvhdrq_phys)
		/*
		 * The rcvhdrq itself; readonly except on HT (so have
		 * to allow writable mapping), multiple pages, contiguous
		 * from an i/o perspective.
		 */
		ret = FUNC2(vma, pd, pd->port_rcvhdrq_size, 1,
				     pd->port_rcvhdrq,
				     "rcvhdrq");
	else if (pgaddr == (u64) pd->port_rcvhdrqtailaddr_phys)
		/* in-memory copy of rcvhdrq tail register */
		ret = FUNC2(vma, pd, PAGE_SIZE, 0,
				     pd->port_rcvhdrtail_kvaddr,
				     "rcvhdrq tail");
	else
		ret = -EINVAL;

	vma->vm_private_data = NULL;

	if (ret < 0)
		FUNC0(&dd->pcidev->dev,
			 "Failure %d on off %llx len %lx\n",
			 -ret, (unsigned long long)pgaddr,
			 vma->vm_end - vma->vm_start);
bail:
	return ret;
}