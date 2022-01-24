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
struct floppy_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  idle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct floppy_state*) ; 

__attribute__((used)) static void FUNC3(struct floppy_state *fs)
{
	unsigned long flags;

	FUNC0(&fs->lock, flags);
	fs->state = idle;
	FUNC2(fs);
	FUNC1(&fs->lock, flags);
}