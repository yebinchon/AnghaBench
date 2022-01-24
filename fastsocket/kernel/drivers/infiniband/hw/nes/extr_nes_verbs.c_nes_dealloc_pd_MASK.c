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
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_ucontext {size_t first_free_db; scalar_t__* mmap_db_index; int /*<<< orphan*/  allocated_doorbells; } ;
struct nes_pd {size_t mmap_db_index; int pd_id; } ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_adapter {int base_pd; int /*<<< orphan*/  allocated_pds; } ;
struct ib_pd {TYPE_1__* uobject; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {scalar_t__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_DBG_PD ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_pd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct nes_adapter*,int /*<<< orphan*/ ,int) ; 
 struct nes_pd* FUNC4 (struct ib_pd*) ; 
 struct nes_ucontext* FUNC5 (scalar_t__) ; 
 struct nes_vnic* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ib_pd *ibpd)
{
	struct nes_ucontext *nesucontext;
	struct nes_pd *nespd = FUNC4(ibpd);
	struct nes_vnic *nesvnic = FUNC6(ibpd->device);
	struct nes_device *nesdev = nesvnic->nesdev;
	struct nes_adapter *nesadapter = nesdev->nesadapter;

	if ((ibpd->uobject) && (ibpd->uobject->context)) {
		nesucontext = FUNC5(ibpd->uobject->context);
		FUNC2(NES_DBG_PD, "Clearing bit %u from allocated doorbells\n",
				nespd->mmap_db_index);
		FUNC0(nespd->mmap_db_index, nesucontext->allocated_doorbells);
		nesucontext->mmap_db_index[nespd->mmap_db_index] = 0;
		if (nesucontext->first_free_db > nespd->mmap_db_index) {
			nesucontext->first_free_db = nespd->mmap_db_index;
		}
	}

	FUNC2(NES_DBG_PD, "Deallocating PD%u structure located @%p.\n",
			nespd->pd_id, nespd);
	FUNC3(nesadapter, nesadapter->allocated_pds,
			(nespd->pd_id-nesadapter->base_pd)>>(PAGE_SHIFT-12));
	FUNC1(nespd);

	return 0;
}