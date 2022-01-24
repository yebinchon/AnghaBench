#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dm_snapshot {int /*<<< orphan*/  pending_exceptions_count; int /*<<< orphan*/  pending_pool; } ;
struct dm_snap_pending_exception {struct dm_snapshot* snap; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dm_snap_pending_exception* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dm_snap_pending_exception *FUNC2(struct dm_snapshot *s)
{
	struct dm_snap_pending_exception *pe = FUNC1(s->pending_pool,
							     GFP_NOIO);

	FUNC0(&s->pending_exceptions_count);
	pe->snap = s;

	return pe;
}