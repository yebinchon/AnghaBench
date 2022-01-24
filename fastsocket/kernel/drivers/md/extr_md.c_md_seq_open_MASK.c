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
struct seq_file {struct mdstat_info* private; } ;
struct mdstat_info {int /*<<< orphan*/  event; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mdstat_info*) ; 
 struct mdstat_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  md_event_count ; 
 int /*<<< orphan*/  md_seq_ops ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	int error;
	struct mdstat_info *mi = FUNC2(sizeof(*mi), GFP_KERNEL);
	if (mi == NULL)
		return -ENOMEM;

	error = FUNC3(file, &md_seq_ops);
	if (error)
		FUNC1(mi);
	else {
		struct seq_file *p = file->private_data;
		p->private = mi;
		mi->event = FUNC0(&md_event_count);
	}
	return error;
}