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
struct mssp {int dummy; } ;
struct mscp {int dummy; } ;
struct hostdata {size_t board_number; int /*<<< orphan*/  sp_dma_addr; scalar_t__ sp_cpu_addr; int /*<<< orphan*/  pdev; TYPE_1__* cp; } ;
struct Scsi_Host {unsigned int can_queue; scalar_t__ dma_channel; int /*<<< orphan*/  n_io_port; int /*<<< orphan*/  io_port; int /*<<< orphan*/  irq; scalar_t__ hostdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  cp_dma_addr; int /*<<< orphan*/  sglist; } ;

/* Variables and functions */
 scalar_t__ NO_DMA ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/ * sha ; 

__attribute__((used)) static int FUNC7(struct Scsi_Host *shost)
{
	struct hostdata *ha = (struct hostdata *)shost->hostdata;
	unsigned int i;

	for (i = 0; i < shost->can_queue; i++)
		FUNC2((&ha->cp[i])->sglist);

	for (i = 0; i < shost->can_queue; i++)
		FUNC4(ha->pdev, ha->cp[i].cp_dma_addr,
				 sizeof(struct mscp), PCI_DMA_BIDIRECTIONAL);

	if (ha->sp_cpu_addr)
		FUNC3(ha->pdev, sizeof(struct mssp),
				    ha->sp_cpu_addr, ha->sp_dma_addr);

	FUNC1(shost->irq, &sha[ha->board_number]);

	if (shost->dma_channel != NO_DMA)
		FUNC0(shost->dma_channel);

	FUNC5(shost->io_port, shost->n_io_port);
	FUNC6(shost);
	return 0;
}