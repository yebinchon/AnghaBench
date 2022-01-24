#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qib_devdata {int dummy; } ;
struct TYPE_3__ {int rdesc; int* rdata; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct qib_devdata*,int,int,int) ; 
 TYPE_1__* rxeq_init_vals ; 

__attribute__((used)) static int FUNC3(struct qib_devdata *dd, int vsel)
{
	int ret;
	int ridx;
	int cnt = FUNC0(rxeq_init_vals);

	for (ridx = 0; ridx < cnt; ++ridx) {
		int elt, reg, val, loc;

		elt = rxeq_init_vals[ridx].rdesc & 0xF;
		reg = rxeq_init_vals[ridx].rdesc >> 4;
		loc = FUNC1(0, elt, reg);
		val = rxeq_init_vals[ridx].rdata[vsel];
		/* mask of 0xFF, because hardware does full-byte store. */
		ret = FUNC2(dd, loc, val, 0xFF);
		if (ret < 0)
			break;
	}
	return ret;
}