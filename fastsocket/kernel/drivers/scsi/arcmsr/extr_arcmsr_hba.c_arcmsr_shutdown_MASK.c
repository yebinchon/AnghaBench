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
struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct AdapterControlBlock {int /*<<< orphan*/  eternal_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct Scsi_Host* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC5(pdev);
	struct AdapterControlBlock *acb =
		(struct AdapterControlBlock *)host->hostdata;
	FUNC3(&acb->eternal_timer);
	FUNC0(acb);
	FUNC4();
	FUNC2(acb);
	FUNC1(acb);
}