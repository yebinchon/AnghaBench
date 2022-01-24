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
struct sbp2_target {int /*<<< orphan*/  lu_list; int /*<<< orphan*/  dont_block; } ;
struct TYPE_2__ {int length; struct sbp2_logical_unit* callback_data; int /*<<< orphan*/  address_callback; } ;
struct sbp2_logical_unit {int lun; int has_sdev; int blocked; int /*<<< orphan*/  link; int /*<<< orphan*/  work; int /*<<< orphan*/  orb_list; scalar_t__ retries; int /*<<< orphan*/  login_id; struct sbp2_target* tgt; TYPE_1__ address_handler; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INVALID_LOGIN_ID ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fw_high_memory_region ; 
 int /*<<< orphan*/  FUNC3 (struct sbp2_logical_unit*) ; 
 struct sbp2_logical_unit* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sbp2_login ; 
 int /*<<< orphan*/  sbp2_status_write ; 

__attribute__((used)) static int FUNC6(struct sbp2_target *tgt, int lun_entry)
{
	struct sbp2_logical_unit *lu;

	lu = FUNC4(sizeof(*lu), GFP_KERNEL);
	if (!lu)
		return -ENOMEM;

	lu->address_handler.length           = 0x100;
	lu->address_handler.address_callback = sbp2_status_write;
	lu->address_handler.callback_data    = lu;

	if (FUNC2(&lu->address_handler,
					&fw_high_memory_region) < 0) {
		FUNC3(lu);
		return -ENOMEM;
	}

	lu->tgt      = tgt;
	lu->lun      = lun_entry & 0xffff;
	lu->login_id = INVALID_LOGIN_ID;
	lu->retries  = 0;
	lu->has_sdev = false;
	lu->blocked  = false;
	++tgt->dont_block;
	FUNC1(&lu->orb_list);
	FUNC0(&lu->work, sbp2_login);

	FUNC5(&lu->link, &tgt->lu_list);
	return 0;
}