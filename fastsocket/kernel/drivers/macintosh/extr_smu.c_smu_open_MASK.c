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
struct smu_private {int /*<<< orphan*/  list; int /*<<< orphan*/  wait; int /*<<< orphan*/  mode; int /*<<< orphan*/  lock; } ;
struct inode {int dummy; } ;
struct file {struct smu_private* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct smu_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  smu_clist ; 
 int /*<<< orphan*/  smu_clist_lock ; 
 int /*<<< orphan*/  smu_file_commands ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct smu_private *pp;
	unsigned long flags;

	pp = FUNC1(sizeof(struct smu_private), GFP_KERNEL);
	if (pp == 0)
		return -ENOMEM;
	FUNC4(&pp->lock);
	pp->mode = smu_file_commands;
	FUNC0(&pp->wait);

	FUNC3();
	FUNC5(&smu_clist_lock, flags);
	FUNC2(&pp->list, &smu_clist);
	FUNC6(&smu_clist_lock, flags);
	file->private_data = pp;
	FUNC7();

	return 0;
}