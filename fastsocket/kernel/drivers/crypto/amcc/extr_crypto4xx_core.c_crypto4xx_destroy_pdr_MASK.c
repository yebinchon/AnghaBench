#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sa_state_record {int dummy; } ;
struct crypto4xx_device {int /*<<< orphan*/  pdr_uinfo; int /*<<< orphan*/  shadow_sr_pool_pa; int /*<<< orphan*/ * shadow_sr_pool; TYPE_1__* core_dev; int /*<<< orphan*/  shadow_sa_pool_pa; int /*<<< orphan*/ * shadow_sa_pool; int /*<<< orphan*/  pdr_pa; int /*<<< orphan*/ * pdr; } ;
struct ce_pd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int PPC4XX_NUM_PD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct crypto4xx_device *dev)
{
	if (dev->pdr != NULL)
		FUNC0(dev->core_dev->device,
				  sizeof(struct ce_pd) * PPC4XX_NUM_PD,
				  dev->pdr, dev->pdr_pa);
	if (dev->shadow_sa_pool)
		FUNC0(dev->core_dev->device, 256 * PPC4XX_NUM_PD,
				  dev->shadow_sa_pool, dev->shadow_sa_pool_pa);
	if (dev->shadow_sr_pool)
		FUNC0(dev->core_dev->device,
			sizeof(struct sa_state_record) * PPC4XX_NUM_PD,
			dev->shadow_sr_pool, dev->shadow_sr_pool_pa);

	FUNC1(dev->pdr_uinfo);
}