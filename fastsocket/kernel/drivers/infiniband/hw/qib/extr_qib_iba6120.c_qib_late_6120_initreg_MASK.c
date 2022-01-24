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
typedef  scalar_t__ u64 ;
struct qib_devdata {scalar_t__ rcvhdrentsize; scalar_t__ rcvhdrsize; scalar_t__ rcvhdrcnt; scalar_t__ pioavailregs_phys; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  kr_rcvhdrcnt ; 
 int /*<<< orphan*/  kr_rcvhdrentsize ; 
 int /*<<< orphan*/  kr_rcvhdrsize ; 
 int /*<<< orphan*/  kr_sendpioavailaddr ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,char*,unsigned long,unsigned long long) ; 
 scalar_t__ FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct qib_devdata *dd)
{
	int ret = 0;
	u64 val;

	FUNC2(dd, kr_rcvhdrentsize, dd->rcvhdrentsize);
	FUNC2(dd, kr_rcvhdrsize, dd->rcvhdrsize);
	FUNC2(dd, kr_rcvhdrcnt, dd->rcvhdrcnt);
	FUNC2(dd, kr_sendpioavailaddr, dd->pioavailregs_phys);
	val = FUNC1(dd, kr_sendpioavailaddr);
	if (val != dd->pioavailregs_phys) {
		FUNC0(dd,
			"Catastrophic software error, SendPIOAvailAddr written as %lx, read back as %llx\n",
			(unsigned long) dd->pioavailregs_phys,
			(unsigned long long) val);
		ret = -EINVAL;
	}
	return ret;
}