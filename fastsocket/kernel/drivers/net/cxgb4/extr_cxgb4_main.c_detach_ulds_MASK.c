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
struct adapter {int /*<<< orphan*/ ** uld_handle; int /*<<< orphan*/  list_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* state_change ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CXGB4_STATE_DETACH ; 
 unsigned int CXGB4_ULD_MAX ; 
 int /*<<< orphan*/  adapter_list ; 
 int /*<<< orphan*/  cxgb4_netevent_nb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int netevent_registered ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uld_mutex ; 
 TYPE_1__* ulds ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct adapter *adap)
{
	unsigned int i;

	FUNC2(&uld_mutex);
	FUNC0(&adap->list_node);
	for (i = 0; i < CXGB4_ULD_MAX; i++)
		if (adap->uld_handle[i]) {
			ulds[i].state_change(adap->uld_handle[i],
					     CXGB4_STATE_DETACH);
			adap->uld_handle[i] = NULL;
		}
	if (netevent_registered && FUNC1(&adapter_list)) {
		FUNC5(&cxgb4_netevent_nb);
		netevent_registered = false;
	}
	FUNC3(&uld_mutex);
}