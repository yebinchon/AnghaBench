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
struct bnx2i_hba {int /*<<< orphan*/  adapter_state; TYPE_1__* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_STATE_LINK_DOWN ; 
 int /*<<< orphan*/  __LINK_STATE_NOCARRIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bnx2i_hba *hba)
{
	if (FUNC2(__LINK_STATE_NOCARRIER, &hba->netdev->state))
		FUNC1(ADAPTER_STATE_LINK_DOWN, &hba->adapter_state);
	else
		FUNC0(ADAPTER_STATE_LINK_DOWN, &hba->adapter_state);
}