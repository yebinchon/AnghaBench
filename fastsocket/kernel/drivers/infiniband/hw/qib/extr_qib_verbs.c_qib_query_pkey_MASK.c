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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct qib_devdata {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct qib_devdata* FUNC0 (struct ib_device*) ; 
 scalar_t__ FUNC1 (struct qib_devdata*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ib_device *ibdev, u8 port, u16 index,
			  u16 *pkey)
{
	struct qib_devdata *dd = FUNC0(ibdev);
	int ret;

	if (index >= FUNC1(dd)) {
		ret = -EINVAL;
		goto bail;
	}

	*pkey = FUNC2(FUNC3(ibdev, port), index);
	ret = 0;

bail:
	return ret;
}