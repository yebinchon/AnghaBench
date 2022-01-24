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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ipath_ibdev {int /*<<< orphan*/  dd; } ;
struct ib_smp {int /*<<< orphan*/  status; scalar_t__ data; int /*<<< orphan*/  attr_mod; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ib_smp*,struct ib_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ipath_ibdev* FUNC5 (struct ib_device*) ; 

__attribute__((used)) static int FUNC6(struct ib_smp *smp,
				   struct ib_device *ibdev)
{
	u32 startpx = 32 * (FUNC1(smp->attr_mod) & 0xffff);
	__be16 *p = (__be16 *) smp->data;
	u16 *q = (u16 *) smp->data;
	struct ipath_ibdev *dev = FUNC5(ibdev);
	unsigned i, n = FUNC2(dev->dd);

	for (i = 0; i < n; i++)
		q[i] = FUNC0(p[i]);

	if (startpx != 0 || FUNC4(dev->dd, q) != 0)
		smp->status |= IB_SMP_INVALID_FIELD;

	return FUNC3(smp, ibdev);
}