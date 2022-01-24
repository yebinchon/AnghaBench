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
struct pt_unit {int flags; int /*<<< orphan*/  available; int /*<<< orphan*/ * bufptr; } ;
struct inode {int dummy; } ;
struct file {struct pt_unit* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int PT_REWIND ; 
 int PT_WRITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_unit*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_unit*) ; 

__attribute__((used)) static int
FUNC5(struct inode *inode, struct file *file)
{
	struct pt_unit *tape = file->private_data;

	if (FUNC1(&tape->available) > 1)
		return -EINVAL;

	if (tape->flags & PT_WRITING)
		FUNC4(tape);

	if (tape->flags & PT_REWIND)
		FUNC3(tape);

	FUNC2(tape->bufptr);
	tape->bufptr = NULL;

	FUNC0(&tape->available);

	return 0;

}