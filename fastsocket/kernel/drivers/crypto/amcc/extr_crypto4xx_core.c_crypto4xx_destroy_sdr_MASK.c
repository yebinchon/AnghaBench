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
struct crypto4xx_device {int scatter_buffer_size; int /*<<< orphan*/  scatter_buffer_pa; int /*<<< orphan*/ * scatter_buffer_va; TYPE_1__* core_dev; int /*<<< orphan*/  sdr_pa; int /*<<< orphan*/ * sdr; } ;
struct ce_sd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int PPC4XX_NUM_SD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct crypto4xx_device *dev)
{
	if (dev->sdr != NULL)
		FUNC0(dev->core_dev->device,
				  sizeof(struct ce_sd) * PPC4XX_NUM_SD,
				  dev->sdr, dev->sdr_pa);

	if (dev->scatter_buffer_va != NULL)
		FUNC0(dev->core_dev->device,
				  dev->scatter_buffer_size * PPC4XX_NUM_SD,
				  dev->scatter_buffer_va,
				  dev->scatter_buffer_pa);
}