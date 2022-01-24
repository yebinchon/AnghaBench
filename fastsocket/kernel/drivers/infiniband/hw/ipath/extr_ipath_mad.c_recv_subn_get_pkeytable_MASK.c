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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ib_smp*) ; 
 struct ipath_ibdev* FUNC6 (struct ib_device*) ; 

__attribute__((used)) static int FUNC7(struct ib_smp *smp,
				   struct ib_device *ibdev)
{
	u32 startpx = 32 * (FUNC0(smp->attr_mod) & 0xffff);
	u16 *p = (u16 *) smp->data;
	__be16 *q = (__be16 *) smp->data;

	/* 64 blocks of 32 16-bit P_Key entries */

	FUNC4(smp->data, 0, sizeof(smp->data));
	if (startpx == 0) {
		struct ipath_ibdev *dev = FUNC6(ibdev);
		unsigned i, n = FUNC3(dev->dd);

		FUNC2(dev->dd, p);

		for (i = 0; i < n; i++)
			q[i] = FUNC1(p[i]);
	} else
		smp->status |= IB_SMP_INVALID_FIELD;

	return FUNC5(smp);
}