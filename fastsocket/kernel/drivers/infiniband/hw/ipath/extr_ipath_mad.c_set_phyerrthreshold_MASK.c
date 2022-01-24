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
struct ipath_devdata {unsigned int ipath_ibcctrl; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_ibcctrl; } ;

/* Variables and functions */
 unsigned int INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK ; 
 unsigned int INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct ipath_devdata*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC1(struct ipath_devdata *dd, unsigned n)
{
	unsigned v;

	v = (dd->ipath_ibcctrl >> INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT) &
		INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK;
	if (v != n) {
		dd->ipath_ibcctrl &=
			~(INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK <<
			  INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT);
		dd->ipath_ibcctrl |=
			(u64) n << INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT;
		FUNC0(dd, dd->ipath_kregs->kr_ibcctrl,
				 dd->ipath_ibcctrl);
	}
	return 0;
}