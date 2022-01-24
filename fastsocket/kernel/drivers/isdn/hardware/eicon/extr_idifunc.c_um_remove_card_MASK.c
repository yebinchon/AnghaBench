#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  Id; int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ udiva_card ;
typedef  int /*<<< orphan*/  diva_os_spin_lock_magic_t ;
typedef  int /*<<< orphan*/  DESCRIPTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ll_lock ; 

__attribute__((used)) static void FUNC8(DESCRIPTOR * d)
{
	diva_os_spin_lock_magic_t old_irql;
	udiva_card *card = NULL;

	if (!(card = FUNC6(d))) {
		FUNC0(("cannot find card to remove"));
		return;
	}
	FUNC5(card->Id);
	FUNC2(&ll_lock, &old_irql, "remove card");
	FUNC7(&card->list);
	FUNC4(&ll_lock, &old_irql, "remove card");
	FUNC1(("idi proc entry removed for card %d", card->Id));
	FUNC3(0, card);
}