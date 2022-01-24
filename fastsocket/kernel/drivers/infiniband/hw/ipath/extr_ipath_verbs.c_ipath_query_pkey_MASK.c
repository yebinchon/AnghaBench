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
struct ipath_ibdev {int /*<<< orphan*/  dd; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ipath_ibdev* FUNC2 (struct ib_device*) ; 

__attribute__((used)) static int FUNC3(struct ib_device *ibdev, u8 port, u16 index,
			    u16 *pkey)
{
	struct ipath_ibdev *dev = FUNC2(ibdev);
	int ret;

	if (index >= FUNC0(dev->dd)) {
		ret = -EINVAL;
		goto bail;
	}

	*pkey = FUNC1(dev->dd, index);
	ret = 0;

bail:
	return ret;
}