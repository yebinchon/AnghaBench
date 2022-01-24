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
struct serio_raw_list {struct serio_raw* serio_raw; } ;
struct serio_raw {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct serio_raw_list* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct serio_raw*) ; 
 int /*<<< orphan*/  serio_raw_mutex ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct serio_raw_list *list = file->private_data;
	struct serio_raw *serio_raw = list->serio_raw;

	FUNC0(&serio_raw_mutex);

	FUNC2(serio_raw);

	FUNC1(&serio_raw_mutex);
	return 0;
}