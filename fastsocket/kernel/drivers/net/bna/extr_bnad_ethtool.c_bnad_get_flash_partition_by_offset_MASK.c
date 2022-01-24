#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct bnad_iocmd_comp {scalar_t__ comp_status; int /*<<< orphan*/  comp; struct bnad* bnad; } ;
struct TYPE_3__ {int /*<<< orphan*/  flash; } ;
struct bnad {int /*<<< orphan*/  bna_lock; TYPE_1__ bna; } ;
struct bfa_flash_attr {scalar_t__ npart; TYPE_2__* part; } ;
struct TYPE_4__ {scalar_t__ part_off; scalar_t__ part_size; scalar_t__ part_type; } ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_OK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct bfa_flash_attr*,int /*<<< orphan*/ ,struct bnad_iocmd_comp*) ; 
 int /*<<< orphan*/  bnad_cb_completion ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_flash_attr*) ; 
 struct bfa_flash_attr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32
FUNC7(struct bnad *bnad, u32 offset,
				u32 *base_offset)
{
	struct bfa_flash_attr *flash_attr;
	struct bnad_iocmd_comp fcomp;
	u32 i, flash_part = 0, ret;
	unsigned long flags = 0;

	flash_attr = FUNC3(sizeof(struct bfa_flash_attr), GFP_KERNEL);
	if (!flash_attr)
		return 0;

	fcomp.bnad = bnad;
	fcomp.comp_status = 0;

	FUNC1(&fcomp.comp);
	FUNC4(&bnad->bna_lock, flags);
	ret = FUNC0(&bnad->bna.flash, flash_attr,
				bnad_cb_completion, &fcomp);
	if (ret != BFA_STATUS_OK) {
		FUNC5(&bnad->bna_lock, flags);
		FUNC2(flash_attr);
		return 0;
	}
	FUNC5(&bnad->bna_lock, flags);
	FUNC6(&fcomp.comp);
	ret = fcomp.comp_status;

	/* Check for the flash type & base offset value */
	if (ret == BFA_STATUS_OK) {
		for (i = 0; i < flash_attr->npart; i++) {
			if (offset >= flash_attr->part[i].part_off &&
			    offset < (flash_attr->part[i].part_off +
				      flash_attr->part[i].part_size)) {
				flash_part = flash_attr->part[i].part_type;
				*base_offset = flash_attr->part[i].part_off;
				break;
			}
		}
	}
	FUNC2(flash_attr);
	return flash_part;
}