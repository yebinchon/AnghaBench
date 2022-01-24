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
struct pcilst_struct {int used; int /*<<< orphan*/  pcidev; int /*<<< orphan*/ * io_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct pcilst_struct *amcc, int master)
{
	int i;

	if (!amcc)
		return -1;

	if (amcc->used)
		return 1;
	if (FUNC0(amcc->pcidev, "addi_amcc_s5933"))
		return -1;
	/* Resources will be accurate now. */
	for (i = 0; i < 5; i++)
		amcc->io_addr[i] = FUNC1(amcc->pcidev, i);
	if (master)
		FUNC2(amcc->pcidev);
	amcc->used = 1;

	return 0;
}