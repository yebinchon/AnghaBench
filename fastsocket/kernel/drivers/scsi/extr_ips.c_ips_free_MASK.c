#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ioctl_len; scalar_t__ mem_addr; int /*<<< orphan*/ * mem_ptr; int /*<<< orphan*/ * ioremap_ptr; int /*<<< orphan*/  max_cmds; scalar_t__ ioctl_datasize; TYPE_2__* ioctl_data; int /*<<< orphan*/  ioctl_busaddr; int /*<<< orphan*/  pcidev; int /*<<< orphan*/ * subsys; int /*<<< orphan*/ * nvram; TYPE_2__* logical_drive_info; int /*<<< orphan*/  logical_drive_info_dma_addr; TYPE_2__* adapt; int /*<<< orphan*/ * conf; TYPE_2__* enq; int /*<<< orphan*/  enq_busaddr; } ;
typedef  TYPE_1__ ips_ha_t ;
struct TYPE_6__ {int /*<<< orphan*/  hw_status_start; } ;
typedef  int /*<<< orphan*/  IPS_LD_INFO ;
typedef  int /*<<< orphan*/  IPS_IO_CMD ;
typedef  int /*<<< orphan*/  IPS_ENQ ;
typedef  int /*<<< orphan*/  IPS_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(ips_ha_t * ha)
{

	FUNC0("ips_free", 1);

	if (ha) {
		if (ha->enq) {
			FUNC4(ha->pcidev, sizeof(IPS_ENQ),
					    ha->enq, ha->enq_busaddr);
			ha->enq = NULL;
		}

		FUNC3(ha->conf);
		ha->conf = NULL;

		if (ha->adapt) {
			FUNC4(ha->pcidev,
					    sizeof (IPS_ADAPTER) +
					    sizeof (IPS_IO_CMD), ha->adapt,
					    ha->adapt->hw_status_start);
			ha->adapt = NULL;
		}

		if (ha->logical_drive_info) {
			FUNC4(ha->pcidev,
					    sizeof (IPS_LD_INFO),
					    ha->logical_drive_info,
					    ha->logical_drive_info_dma_addr);
			ha->logical_drive_info = NULL;
		}

		FUNC3(ha->nvram);
		ha->nvram = NULL;

		FUNC3(ha->subsys);
		ha->subsys = NULL;

		if (ha->ioctl_data) {
			FUNC4(ha->pcidev, ha->ioctl_len,
					    ha->ioctl_data, ha->ioctl_busaddr);
			ha->ioctl_data = NULL;
			ha->ioctl_datasize = 0;
			ha->ioctl_len = 0;
		}
		FUNC2(ha, ha->max_cmds);

		/* free memory mapped (if applicable) */
		if (ha->mem_ptr) {
			FUNC1(ha->ioremap_ptr);
			ha->ioremap_ptr = NULL;
			ha->mem_ptr = NULL;
		}

		ha->mem_addr = 0;

	}
}