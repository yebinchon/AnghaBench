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
struct pending_request {int dummy; } ;
struct file_info {int /*<<< orphan*/  reqlists_lock; } ;

/* Variables and functions */
 struct pending_request* FUNC0 (struct file_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct pending_request *FUNC3(struct file_info *fi)
{
	unsigned long flags;
	struct pending_request *req;

	FUNC1(&fi->reqlists_lock, flags);
	req = FUNC0(fi);
	FUNC2(&fi->reqlists_lock, flags);
	return req;
}