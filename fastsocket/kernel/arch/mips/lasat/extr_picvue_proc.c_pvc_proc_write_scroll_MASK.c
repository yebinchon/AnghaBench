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
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pvc_mutex ; 
 int scroll_dir ; 
 int scroll_interval ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static int FUNC5(struct file *file, const char *buffer,
			   unsigned long count, void *data)
{
	int origcount = count;
	int cmd = FUNC4(buffer, NULL, 10);

	FUNC2(&pvc_mutex);
	if (scroll_interval != 0)
		FUNC1(&timer);

	if (cmd == 0) {
		scroll_dir = 0;
		scroll_interval = 0;
	} else {
		if (cmd < 0) {
			scroll_dir = -1;
			scroll_interval = -cmd;
		} else {
			scroll_dir = 1;
			scroll_interval = cmd;
		}
		FUNC0(&timer);
	}
	FUNC3(&pvc_mutex);

	return origcount;
}