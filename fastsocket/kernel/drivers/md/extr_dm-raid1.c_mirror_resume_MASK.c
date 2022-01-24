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
struct mirror_set {int /*<<< orphan*/  rh; int /*<<< orphan*/  suspend; } ;
struct dm_target {struct mirror_set* private; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct TYPE_2__ {scalar_t__ (* resume ) (struct dm_dirty_log*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dm_dirty_log* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dm_dirty_log*) ; 

__attribute__((used)) static void FUNC5(struct dm_target *ti)
{
	struct mirror_set *ms = ti->private;
	struct dm_dirty_log *log = FUNC2(ms->rh);

	FUNC1(&ms->suspend, 0);
	if (log->type->resume && log->type->resume(log))
		/* FIXME: need better error handling */
		FUNC0("log resume failed");
	FUNC3(ms->rh);
}