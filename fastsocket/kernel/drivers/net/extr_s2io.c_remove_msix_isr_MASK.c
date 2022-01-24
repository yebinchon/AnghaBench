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
typedef  int u16 ;
struct s2io_nic {int num_entries; int /*<<< orphan*/  pdev; TYPE_1__* s2io_entries; TYPE_1__* entries; } ;
struct TYPE_2__ {scalar_t__ in_use; int vector; void* arg; } ;

/* Variables and functions */
 scalar_t__ MSIX_REGISTERED_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct s2io_nic *sp)
{
	int i;
	u16 msi_control;

	for (i = 0; i < sp->num_entries; i++) {
		if (sp->s2io_entries[i].in_use == MSIX_REGISTERED_SUCCESS) {
			int vector = sp->entries[i].vector;
			void *arg = sp->s2io_entries[i].arg;
			FUNC0(vector, arg);
		}
	}

	FUNC1(sp->entries);
	FUNC1(sp->s2io_entries);
	sp->entries = NULL;
	sp->s2io_entries = NULL;

	FUNC3(sp->pdev, 0x42, &msi_control);
	msi_control &= 0xFFFE; /* Disable MSI */
	FUNC4(sp->pdev, 0x42, msi_control);

	FUNC2(sp->pdev);
}