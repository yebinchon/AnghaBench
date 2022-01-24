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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qib_devdata {int dummy; } ;
struct ib_smp {int /*<<< orphan*/  status; scalar_t__ data; int /*<<< orphan*/  attr_mod; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct qib_devdata* FUNC2 (struct ib_device*) ; 
 unsigned int FUNC3 (struct qib_devdata*) ; 
 scalar_t__ FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ib_smp*,struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ib_smp *smp, struct ib_device *ibdev,
			      u8 port)
{
	u32 startpx = 32 * (FUNC1(smp->attr_mod) & 0xffff);
	__be16 *p = (__be16 *) smp->data;
	u16 *q = (u16 *) smp->data;
	struct qib_devdata *dd = FUNC2(ibdev);
	unsigned i, n = FUNC3(dd);

	for (i = 0; i < n; i++)
		q[i] = FUNC0(p[i]);

	if (startpx != 0 || FUNC4(dd, port, q) != 0)
		smp->status |= IB_SMP_INVALID_FIELD;

	return FUNC5(smp, ibdev, port);
}