#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {size_t irq; scalar_t__ n_io_port; scalar_t__ io_port; } ;
struct TYPE_3__ {scalar_t__ channel; scalar_t__ pdev; } ;
typedef  TYPE_1__ hostdata ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int* reg_IRQ ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *sh)
{
	hostdata *hd = FUNC0(sh);
	if (sh->irq && reg_IRQ[sh->irq] == 1)
		FUNC1(sh->irq, NULL);
	else
		reg_IRQ[sh->irq]--;
	if (FUNC0(sh)->channel == 0) {
		if (sh->io_port && sh->n_io_port)
			FUNC3(sh->io_port, sh->n_io_port);
	}
	/* At this point the PCI reference can go */
	if (hd->pdev)
		FUNC2(hd->pdev);
	return 1;
}