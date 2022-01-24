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
struct pvr2_context {int /*<<< orphan*/  mutex; int /*<<< orphan*/  disconnect_flag; scalar_t__ mc_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_context*) ; 

__attribute__((used)) static void FUNC2(struct pvr2_context *mp)
{
	int destroy_flag = 0;
	if (!(mp->mc_first || !mp->disconnect_flag)) {
		destroy_flag = !0;
	}
	FUNC0(&mp->mutex);
	if (destroy_flag) FUNC1(mp);
}