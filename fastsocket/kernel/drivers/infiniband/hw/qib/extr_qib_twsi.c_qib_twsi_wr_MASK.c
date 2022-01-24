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
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int QIB_TWSI_START ; 
 int QIB_TWSI_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*) ; 
 int FUNC2 (struct qib_devdata*,int) ; 

__attribute__((used)) static int FUNC3(struct qib_devdata *dd, int data, int flags)
{
	int ret = 1;
	if (flags & QIB_TWSI_START)
		FUNC0(dd);

	ret = FUNC2(dd, data); /* Leaves SCL low (from i2c_ackrcv()) */

	if (flags & QIB_TWSI_STOP)
		FUNC1(dd);
	return ret;
}