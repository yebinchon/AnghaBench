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
struct tty3270 {int /*<<< orphan*/  update_flags; } ;
struct raw3270_view {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_UPDATE_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct tty3270*,int) ; 

__attribute__((used)) static int
FUNC1(struct raw3270_view *view)
{
	struct tty3270 *tp;

	tp = (struct tty3270 *) view;
	tp->update_flags = TTY_UPDATE_ALL;
	FUNC0(tp, 1);
	return 0;
}