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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct initio_host {int /*<<< orphan*/  addr; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC2(pdev);
	struct initio_host *s = (struct initio_host *)host->hostdata;
	FUNC5(host);
	FUNC0(pdev->irq, host);
	FUNC3(s->addr, 256);
	FUNC4(host);
	FUNC1(pdev);
}