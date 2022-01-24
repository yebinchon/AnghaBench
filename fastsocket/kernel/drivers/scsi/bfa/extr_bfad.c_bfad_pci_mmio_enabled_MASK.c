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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioc; } ;
struct bfad_s {int /*<<< orphan*/  hal_tmo; int /*<<< orphan*/  comp; int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa_fcs; TYPE_1__ bfa; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct bfad_s* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static pci_ers_result_t
FUNC11(struct pci_dev *pdev)
{
	unsigned long	flags;
	struct bfad_s *bfad = FUNC7(pdev);

	FUNC4(KERN_INFO, &pdev->dev, "mmio_enabled\n");

	/* Fetch FW diagnostic information */
	FUNC1(&bfad->bfa.ioc);

	/* Cancel all pending IOs */
	FUNC8(&bfad->bfad_lock, flags);
	FUNC5(&bfad->comp);
	FUNC0(&bfad->bfa_fcs);
	FUNC9(&bfad->bfad_lock, flags);
	FUNC10(&bfad->comp);

	FUNC2(bfad);
	FUNC3(&bfad->hal_tmo);
	FUNC6(pdev);

	return PCI_ERS_RESULT_NEED_RESET;
}