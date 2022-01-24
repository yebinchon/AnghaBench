#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct ipath_devdata {int ipath_flags; unsigned int ipath_rcvhdrsize; int ipath_rcvhdrentsize; TYPE_2__* ipath_kregs; TYPE_1__* pcidev; } ;
struct TYPE_4__ {int /*<<< orphan*/  kr_rcvhdrsize; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EOVERFLOW ; 
 int IPATH_RCVHDRSZ_SET ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC4(struct ipath_devdata *dd, unsigned rhdrsize)
{
	int ret = 0;

	if (dd->ipath_flags & IPATH_RCVHDRSZ_SET) {
		if (dd->ipath_rcvhdrsize != rhdrsize) {
			FUNC0(&dd->pcidev->dev,
				 "Error: can't set protocol header "
				 "size %u, already %u\n",
				 rhdrsize, dd->ipath_rcvhdrsize);
			ret = -EAGAIN;
		} else
			FUNC1(VERBOSE, "Reuse same protocol header "
				   "size %u\n", dd->ipath_rcvhdrsize);
	} else if (rhdrsize > (dd->ipath_rcvhdrentsize -
			       (sizeof(u64) / sizeof(u32)))) {
		FUNC2("Error: can't set protocol header size %u "
			  "(> max %u)\n", rhdrsize,
			  dd->ipath_rcvhdrentsize -
			  (u32) (sizeof(u64) / sizeof(u32)));
		ret = -EOVERFLOW;
	} else {
		dd->ipath_flags |= IPATH_RCVHDRSZ_SET;
		dd->ipath_rcvhdrsize = rhdrsize;
		FUNC3(dd, dd->ipath_kregs->kr_rcvhdrsize,
				 dd->ipath_rcvhdrsize);
		FUNC1(VERBOSE, "Set protocol header size to %u\n",
			   dd->ipath_rcvhdrsize);
	}
	return ret;
}