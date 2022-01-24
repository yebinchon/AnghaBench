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
typedef  int u64 ;
struct ipath_devdata {int ipath_pioavregs; int ipath_flags; int* ipath_pioavailshadow; int* ipath_pioavailkernel; int /*<<< orphan*/ * ipath_pioavailregs_dma; } ;

/* Variables and functions */
 int INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT ; 
 int IPATH_SWAP_PIOBUFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long long,int) ; 
 int /*<<< orphan*/  ipath_pioavail_lock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ipath_devdata *dd)
{
	int i, im;
	unsigned long flags;

	FUNC2(&ipath_pioavail_lock, flags);
	for (i = 0; i < dd->ipath_pioavregs; i++) {
		u64 val, oldval;
		/* deal with 6110 chip bug on high register #s */
		im = (i > 3 && (dd->ipath_flags & IPATH_SWAP_PIOBUFS)) ?
			i ^ 1 : i;
		val = FUNC1(dd->ipath_pioavailregs_dma[im]);
		/*
		 * busy out the buffers not in the kernel avail list,
		 * without changing the generation bits.
		 */
		oldval = dd->ipath_pioavailshadow[i];
		dd->ipath_pioavailshadow[i] = val |
			((~dd->ipath_pioavailkernel[i] <<
			INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT) &
			0xaaaaaaaaaaaaaaaaULL); /* All BUSY bits in qword */
		if (oldval != dd->ipath_pioavailshadow[i])
			FUNC0("shadow[%d] was %Lx, now %lx\n",
				i, (unsigned long long) oldval,
				dd->ipath_pioavailshadow[i]);
	}
	FUNC3(&ipath_pioavail_lock, flags);
}