#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct falcon_board {TYPE_1__* type; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; } ;
struct TYPE_3__ {scalar_t__ id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* board_types ; 
 struct falcon_board* FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  probe ; 

int FUNC6(struct efx_nic *efx, u16 revision_info)
{
	struct falcon_board *board = FUNC4(efx);
	u8 type_id = FUNC3(revision_info);
	int i;

	board->major = FUNC1(revision_info);
	board->minor = FUNC2(revision_info);

	for (i = 0; i < FUNC0(board_types); i++)
		if (board_types[i].id == type_id)
			board->type = &board_types[i];

	if (board->type) {
		return 0;
	} else {
		FUNC5(efx, probe, efx->net_dev, "unknown board type %d\n",
			  type_id);
		return -ENODEV;
	}
}