#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  features; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int adapter_nr; int /*<<< orphan*/  link; TYPE_2__ d; int /*<<< orphan*/  entity_q; } ;
typedef  TYPE_1__ diva_um_idi_adapter_t ;
typedef  int /*<<< orphan*/  diva_os_spin_lock_magic_t ;
typedef  TYPE_2__ DESCRIPTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  adapter_lock ; 
 int /*<<< orphan*/  adapter_q ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 

int FUNC7(const DESCRIPTOR * d, int adapter_nr)
{
	diva_os_spin_lock_magic_t old_irql;
	diva_um_idi_adapter_t *a =
	    (diva_um_idi_adapter_t *) FUNC4(0,
						     sizeof
						     (diva_um_idi_adapter_t));

	if (!a) {
		return (-1);
	}
	FUNC6(a, 0x00, sizeof(*a));
	FUNC1(&a->entity_q);

	a->d = *d;
	a->adapter_nr = adapter_nr;

	FUNC0(("DIDD_ADD A(%d), type:%02x, features:%04x, channels:%d",
		 adapter_nr, a->d.type, a->d.features, a->d.channels));

	FUNC2(&adapter_lock, &old_irql, "create_adapter");
	FUNC5(&a->link, &adapter_q);
	FUNC3(&adapter_lock, &old_irql, "create_adapter");
	return (0);
}