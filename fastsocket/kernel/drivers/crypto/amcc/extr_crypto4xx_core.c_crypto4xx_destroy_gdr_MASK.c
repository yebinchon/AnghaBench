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
struct crypto4xx_device {int /*<<< orphan*/  gdr_pa; int /*<<< orphan*/  gdr; TYPE_1__* core_dev; } ;
struct ce_gd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int PPC4XX_NUM_GD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct crypto4xx_device *dev)
{
	FUNC0(dev->core_dev->device,
			  sizeof(struct ce_gd) * PPC4XX_NUM_GD,
			  dev->gdr, dev->gdr_pa);
}