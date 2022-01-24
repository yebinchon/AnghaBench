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
typedef  scalar_t__ u8 ;
struct inode {int dummy; } ;
struct file_info {int /*<<< orphan*/  addr_list; int /*<<< orphan*/  wait_complete; int /*<<< orphan*/  reqlists_lock; int /*<<< orphan*/  req_complete; int /*<<< orphan*/  req_pending; int /*<<< orphan*/  state; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  list; scalar_t__ notification; } ;
struct file {struct file_info* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RAW1394_NOTIFY_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct file_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opened ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct file_info *fi;

	fi = FUNC2(sizeof(*fi), GFP_KERNEL);
	if (!fi)
		return -ENOMEM;

	fi->notification = (u8) RAW1394_NOTIFY_ON;	/* busreset notification */

	FUNC0(&fi->list);
	FUNC3(&fi->state_mutex);
	fi->state = opened;
	FUNC0(&fi->req_pending);
	FUNC0(&fi->req_complete);
	FUNC4(&fi->reqlists_lock);
	FUNC1(&fi->wait_complete);
	FUNC0(&fi->addr_list);

	file->private_data = fi;

	return 0;
}