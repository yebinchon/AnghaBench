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
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  areas; } ;
typedef  TYPE_1__ debug_info_t ;
typedef  int /*<<< orphan*/  debug_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debug_active ; 
 scalar_t__ debug_critical ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

debug_entry_t
*FUNC9(debug_info_t * id, int level, const void *buf, int len)
{
	unsigned long flags;
	debug_entry_t *active;

	if (!debug_active || !id->areas)
		return NULL;
	if (debug_critical) {
		if (!FUNC7(&id->lock, flags))
			return NULL;
	} else
		FUNC6(&id->lock, flags);
	active = FUNC2(id);
	FUNC4(FUNC0(active), 0, id->buf_size);
	FUNC3(FUNC0(active), buf, FUNC5(len, id->buf_size));
	FUNC1(id, active, level, 1);
	FUNC8(&id->lock, flags);

	return active;
}