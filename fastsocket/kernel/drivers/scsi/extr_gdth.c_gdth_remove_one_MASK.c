#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int dma_channel; scalar_t__ irq; } ;
typedef  int /*<<< orphan*/  gdth_msg_str ;
struct TYPE_5__ {scalar_t__ ccb_phys; int /*<<< orphan*/  pdev; int /*<<< orphan*/  msg_phys; scalar_t__ pmsg; int /*<<< orphan*/  scratch_phys; scalar_t__ pscratch; int /*<<< orphan*/  coal_stat_phys; scalar_t__ coal_stat; int /*<<< orphan*/ * sdev; struct Scsi_Host* shost; } ;
typedef  TYPE_1__ gdth_ha_str ;
typedef  int /*<<< orphan*/  gdth_coal_status ;
typedef  int /*<<< orphan*/  gdth_cmd_str ;

/* Variables and functions */
 int GDTH_SCRATCH ; 
 int MAXOFFSETS ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC9(gdth_ha_str *ha)
{
	struct Scsi_Host *shp = ha->shost;

	FUNC0(("gdth_remove_one()\n"));

	FUNC8(shp);

	FUNC3(ha);

	if (ha->sdev) {
		FUNC6(ha->sdev);
		ha->sdev = NULL;
	}

	if (shp->irq)
		FUNC2(shp->irq,ha);

#ifdef CONFIG_ISA
	if (shp->dma_channel != 0xff)
		free_dma(shp->dma_channel);
#endif
#ifdef INT_COAL
	if (ha->coal_stat)
		pci_free_consistent(ha->pdev, sizeof(gdth_coal_status) *
			MAXOFFSETS, ha->coal_stat, ha->coal_stat_phys);
#endif
	if (ha->pscratch)
		FUNC4(ha->pdev, GDTH_SCRATCH,
			ha->pscratch, ha->scratch_phys);
	if (ha->pmsg)
		FUNC4(ha->pdev, sizeof(gdth_msg_str),
			ha->pmsg, ha->msg_phys);
	if (ha->ccb_phys)
		FUNC5(ha->pdev,ha->ccb_phys,
			sizeof(gdth_cmd_str),PCI_DMA_BIDIRECTIONAL);

	FUNC7(shp);
}