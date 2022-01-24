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
struct tty3270 {int /*<<< orphan*/  view; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty3270*) ; 
 scalar_t__ RAW3270_FIRSTMINOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  tty3270_fn ; 
 int tty3270_max_index ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct tty3270 *tp;
	int i;

	for (i = 0; i < tty3270_max_index; i++) {
		tp = (struct tty3270 *)
			FUNC2(&tty3270_fn, i + RAW3270_FIRSTMINOR);
		if (!FUNC0(tp))
			FUNC1(&tp->view);
	}
}