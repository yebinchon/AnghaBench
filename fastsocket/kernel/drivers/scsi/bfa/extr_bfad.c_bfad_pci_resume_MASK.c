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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfad_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFAD_EEH_BUSY ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct bfad_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct bfad_s* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct pci_dev *pdev)
{
	unsigned long	flags;
	struct bfad_s *bfad = FUNC2(pdev);

	FUNC1(KERN_WARNING, &pdev->dev, "resume\n");

	/* wait until the link is online */
	FUNC0(bfad);

	FUNC3(&bfad->bfad_lock, flags);
	bfad->bfad_flags &= ~BFAD_EEH_BUSY;
	FUNC4(&bfad->bfad_lock, flags);
}