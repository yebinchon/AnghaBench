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
struct line {int /*<<< orphan*/  lock; int /*<<< orphan*/  chan_list; } ;
struct console {size_t index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct line* vts ; 

__attribute__((used)) static void FUNC3(struct console *console, const char *string,
			      unsigned len)
{
	struct line *line = &vts[console->index];
	unsigned long flags;

	FUNC1(&line->lock, flags);
	FUNC0(&line->chan_list, string, len);
	FUNC2(&line->lock, flags);
}