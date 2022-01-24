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
struct mirror_set {int /*<<< orphan*/  nr_mirrors; int /*<<< orphan*/  kmirrord_wq; int /*<<< orphan*/  kcopyd_client; int /*<<< orphan*/  timer; } ;
struct dm_target {scalar_t__ private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mirror_set*,struct dm_target*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dm_target *ti)
{
	struct mirror_set *ms = (struct mirror_set *) ti->private;

	FUNC0(&ms->timer);
	FUNC4(ms->kmirrord_wq);
	FUNC3();
	FUNC2(ms->kcopyd_client);
	FUNC1(ms->kmirrord_wq);
	FUNC5(ms, ti, ms->nr_mirrors);
}