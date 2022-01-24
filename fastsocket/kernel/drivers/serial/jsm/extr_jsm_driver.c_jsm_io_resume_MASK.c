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
struct jsm_board {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jsm_board*) ; 
 struct jsm_board* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct jsm_board *brd = FUNC1(pdev);

	FUNC2(pdev);
	FUNC3(pdev);

	FUNC0(brd);
}