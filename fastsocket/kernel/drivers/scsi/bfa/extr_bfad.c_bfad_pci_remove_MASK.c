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
struct bfad_s {struct bfad_s* trcmod; int /*<<< orphan*/  list_entry; int /*<<< orphan*/  pport; struct bfad_s* regdata; int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; int /*<<< orphan*/ * bfad_tsk; int /*<<< orphan*/  inst_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFAD_E_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bfad_s*) ; 
 int /*<<< orphan*/  bfad_inst ; 
 int /*<<< orphan*/  bfad_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct bfad_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfad_s*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct bfad_s* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC14(struct pci_dev *pdev)
{
	struct bfad_s	      *bfad = FUNC11(pdev);
	unsigned long	flags;

	FUNC2(bfad, bfad->inst_no);

	FUNC12(&bfad->bfad_lock, flags);
	if (bfad->bfad_tsk != NULL) {
		FUNC13(&bfad->bfad_lock, flags);
		FUNC7(bfad->bfad_tsk);
	} else {
		FUNC13(&bfad->bfad_lock, flags);
	}

	/* Send Event BFAD_E_STOP */
	FUNC1(bfad, BFAD_E_STOP);

	/* Driver detach and dealloc mem */
	FUNC12(&bfad->bfad_lock, flags);
	FUNC0(&bfad->bfa);
	FUNC13(&bfad->bfad_lock, flags);
	FUNC4(bfad);

	/* Remove the debugfs node for this bfad */
	FUNC6(bfad->regdata);
	FUNC3(&bfad->pport);

	/* Cleaning the BFAD instance */
	FUNC9(&bfad_mutex);
	bfad_inst--;
	FUNC8(&bfad->list_entry);
	FUNC10(&bfad_mutex);
	FUNC5(pdev, bfad);

	FUNC6(bfad->trcmod);
	FUNC6(bfad);
}