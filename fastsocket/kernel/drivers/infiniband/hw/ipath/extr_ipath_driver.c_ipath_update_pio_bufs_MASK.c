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
struct ipath_devdata {unsigned long* ipath_pioavailshadow; int ipath_flags; int* ipath_pioavailkernel; int /*<<< orphan*/  volatile* ipath_pioavailregs_dma; int /*<<< orphan*/  ipath_pioavregs; } ;
typedef  int /*<<< orphan*/  volatile __le64 ;

/* Variables and functions */
 int INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT ; 
 int IPATH_SWAP_PIOBUFS ; 
 int /*<<< orphan*/  PKT ; 
 int __IPATH_VERBDBG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long,unsigned long long,unsigned long,unsigned long long,unsigned long,unsigned long long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ipath_debug ; 
 int /*<<< orphan*/  ipath_pioavail_lock ; 
 int FUNC2 (int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ipath_devdata *dd)
{
	unsigned long flags;
	int i;
	const unsigned piobregs = (unsigned)dd->ipath_pioavregs;

	/* If the generation (check) bits have changed, then we update the
	 * busy bit for the corresponding PIO buffer.  This algorithm will
	 * modify positions to the value they already have in some cases
	 * (i.e., no change), but it's faster than changing only the bits
	 * that have changed.
	 *
	 * We would like to do this atomicly, to avoid spinlocks in the
	 * critical send path, but that's not really possible, given the
	 * type of changes, and that this routine could be called on
	 * multiple cpu's simultaneously, so we lock in this routine only,
	 * to avoid conflicting updates; all we change is the shadow, and
	 * it's a single 64 bit memory location, so by definition the update
	 * is atomic in terms of what other cpu's can see in testing the
	 * bits.  The spin_lock overhead isn't too bad, since it only
	 * happens when all buffers are in use, so only cpu overhead, not
	 * latency or bandwidth is affected.
	 */
	if (!dd->ipath_pioavailregs_dma) {
		FUNC1("Update shadow pioavail, but regs_dma NULL!\n");
		return;
	}
	if (ipath_debug & __IPATH_VERBDBG) {
		/* only if packet debug and verbose */
		volatile __le64 *dma = dd->ipath_pioavailregs_dma;
		unsigned long *shadow = dd->ipath_pioavailshadow;

		FUNC0(PKT, "Refill avail, dma0=%llx shad0=%lx, "
			   "d1=%llx s1=%lx, d2=%llx s2=%lx, d3=%llx "
			   "s3=%lx\n",
			   (unsigned long long) FUNC2(dma[0]),
			   shadow[0],
			   (unsigned long long) FUNC2(dma[1]),
			   shadow[1],
			   (unsigned long long) FUNC2(dma[2]),
			   shadow[2],
			   (unsigned long long) FUNC2(dma[3]),
			   shadow[3]);
		if (piobregs > 4)
			FUNC0(
				PKT, "2nd group, dma4=%llx shad4=%lx, "
				"d5=%llx s5=%lx, d6=%llx s6=%lx, "
				"d7=%llx s7=%lx\n",
				(unsigned long long) FUNC2(dma[4]),
				shadow[4],
				(unsigned long long) FUNC2(dma[5]),
				shadow[5],
				(unsigned long long) FUNC2(dma[6]),
				shadow[6],
				(unsigned long long) FUNC2(dma[7]),
				shadow[7]);
	}
	FUNC3(&ipath_pioavail_lock, flags);
	for (i = 0; i < piobregs; i++) {
		u64 pchbusy, pchg, piov, pnew;
		/*
		 * Chip Errata: bug 6641; even and odd qwords>3 are swapped
		 */
		if (i > 3 && (dd->ipath_flags & IPATH_SWAP_PIOBUFS))
			piov = FUNC2(dd->ipath_pioavailregs_dma[i ^ 1]);
		else
			piov = FUNC2(dd->ipath_pioavailregs_dma[i]);
		pchg = dd->ipath_pioavailkernel[i] &
			~(dd->ipath_pioavailshadow[i] ^ piov);
		pchbusy = pchg << INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT;
		if (pchg && (pchbusy & dd->ipath_pioavailshadow[i])) {
			pnew = dd->ipath_pioavailshadow[i] & ~pchbusy;
			pnew |= piov & pchbusy;
			dd->ipath_pioavailshadow[i] = pnew;
		}
	}
	FUNC4(&ipath_pioavail_lock, flags);
}