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
struct carm_request {int /*<<< orphan*/  n_elem; int /*<<< orphan*/ * sg; int /*<<< orphan*/  rq; } ;
struct carm_host {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int PCI_DMA_FROMDEVICE ; 
 int PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct carm_host*,struct carm_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct carm_host *host,
				  struct carm_request *crq, int error)
{
	int pci_dir;

	FUNC0("ENTER\n");

	if (FUNC3(crq->rq) == WRITE)
		pci_dir = PCI_DMA_TODEVICE;
	else
		pci_dir = PCI_DMA_FROMDEVICE;

	FUNC2(host->pdev, &crq->sg[0], crq->n_elem, pci_dir);

	FUNC1(host, crq, error);
}