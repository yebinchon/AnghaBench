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
struct TYPE_3__ {int /*<<< orphan*/  cmxgcr; } ;
struct TYPE_4__ {TYPE_1__ qmx; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  QE_CMXGCR_MII_ENET_MNG ; 
 unsigned int QE_CMXGCR_MII_ENET_MNG_SHIFT ; 
 int UCC_MAX_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  cmxgcr_lock ; 
 TYPE_2__* qe_immr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(unsigned int ucc_num)
{
	unsigned long flags;

	if (ucc_num > UCC_MAX_NUM - 1)
		return -EINVAL;

	FUNC1(&cmxgcr_lock, flags);
	FUNC0(&qe_immr->qmx.cmxgcr, QE_CMXGCR_MII_ENET_MNG,
		ucc_num << QE_CMXGCR_MII_ENET_MNG_SHIFT);
	FUNC2(&cmxgcr_lock, flags);

	return 0;
}