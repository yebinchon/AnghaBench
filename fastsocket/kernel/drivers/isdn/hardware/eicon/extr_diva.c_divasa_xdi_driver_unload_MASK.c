#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* cleanup_adapter_proc ) (TYPE_2__*) ;} ;
struct TYPE_8__ {int controller; TYPE_1__ interface; } ;
typedef  TYPE_2__ diva_os_xdi_adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/ ** IoAdapters ; 
 int /*<<< orphan*/  adapter_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(void)
{
	diva_os_xdi_adapter_t *a;

	while ((a = FUNC2())) {
		if (a->interface.cleanup_adapter_proc) {
			(*(a->interface.cleanup_adapter_proc)) (a);
		}
		if (a->controller) {
			IoAdapters[a->controller - 1] = NULL;
			FUNC3(a);
		}
		FUNC1(0, a);
	}
	FUNC0(&adapter_lock, "adapter");
}