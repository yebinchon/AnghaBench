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
struct Scsi_Host {int dma_channel; scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *shost)
{
	if (shost->irq)
		FUNC1(shost->irq, NULL);
	if (shost->dma_channel != 0xff)
		FUNC0(shost->dma_channel);
	if (shost->io_port && shost->n_io_port)
		FUNC2(shost->io_port, shost->n_io_port);
	FUNC3(shost);
	return 0;
}