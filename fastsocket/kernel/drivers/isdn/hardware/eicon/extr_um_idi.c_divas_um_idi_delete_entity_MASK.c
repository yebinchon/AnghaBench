#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* os_context; int /*<<< orphan*/  link; int /*<<< orphan*/ * adapter; } ;
typedef  TYPE_1__ divas_um_idi_entity_t ;
typedef  int /*<<< orphan*/  diva_um_idi_adapter_t ;
typedef  int /*<<< orphan*/  diva_os_spin_lock_magic_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  adapter_lock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 

int FUNC8(int adapter_nr, void *entity)
{
	divas_um_idi_entity_t *e;
	diva_um_idi_adapter_t *a;
	diva_os_spin_lock_magic_t old_irql;

	if (!(e = (divas_um_idi_entity_t *) entity))
		return (-1);

	FUNC2(&adapter_lock, &old_irql, "delete_entity");
	if ((a = e->adapter)) {
		FUNC6(&e->link);
	}
	FUNC4(&adapter_lock, &old_irql, "delete_entity");

	FUNC5(entity);
	FUNC1(e);
	FUNC3(0, e->os_context);
	FUNC7(e, 0x00, sizeof(*e));
	FUNC3(0, e);

	FUNC0(("A(%d) remove E:%08x", adapter_nr, e));

	return (0);
}