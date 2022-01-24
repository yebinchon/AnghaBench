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
struct vm_area_struct {size_t vm_end; unsigned long vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct ipath_portdata {unsigned long port_rcvegrbuf_size; unsigned long port_rcvegrbuf_chunks; int /*<<< orphan*/ * port_rcvegrbuf; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 unsigned long PAGE_SHIFT ; 
 int VM_MAYWRITE ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vm_area_struct *vma,
			   struct ipath_portdata *pd)
{
	struct ipath_devdata *dd = pd->port_dd;
	unsigned long start, size;
	size_t total_size, i;
	unsigned long pfn;
	int ret;

	size = pd->port_rcvegrbuf_size;
	total_size = pd->port_rcvegrbuf_chunks * size;
	if ((vma->vm_end - vma->vm_start) > total_size) {
		FUNC0(&dd->pcidev->dev, "FAIL on egr bufs: "
			 "reqlen %lx > actual %lx\n",
			 vma->vm_end - vma->vm_start,
			 (unsigned long) total_size);
		ret = -EINVAL;
		goto bail;
	}

	if (vma->vm_flags & VM_WRITE) {
		FUNC0(&dd->pcidev->dev, "Can't map eager buffers as "
			 "writable (flags=%lx)\n", vma->vm_flags);
		ret = -EPERM;
		goto bail;
	}
	/* don't allow them to later change to writeable with mprotect */
	vma->vm_flags &= ~VM_MAYWRITE;

	start = vma->vm_start;

	for (i = 0; i < pd->port_rcvegrbuf_chunks; i++, start += size) {
		pfn = FUNC2(pd->port_rcvegrbuf[i]) >> PAGE_SHIFT;
		ret = FUNC1(vma, start, pfn, size,
				      vma->vm_page_prot);
		if (ret < 0)
			goto bail;
	}
	ret = 0;

bail:
	return ret;
}