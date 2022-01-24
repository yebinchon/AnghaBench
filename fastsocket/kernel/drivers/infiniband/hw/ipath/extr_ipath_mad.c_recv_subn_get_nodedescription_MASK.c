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
struct ib_smp {int /*<<< orphan*/  data; int /*<<< orphan*/  status; scalar_t__ attr_mod; } ;
struct ib_device {int /*<<< orphan*/  node_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ib_smp*) ; 

__attribute__((used)) static int FUNC2(struct ib_smp *smp,
					 struct ib_device *ibdev)
{
	if (smp->attr_mod)
		smp->status |= IB_SMP_INVALID_FIELD;

	FUNC0(smp->data, ibdev->node_desc, sizeof(smp->data));

	return FUNC1(smp);
}