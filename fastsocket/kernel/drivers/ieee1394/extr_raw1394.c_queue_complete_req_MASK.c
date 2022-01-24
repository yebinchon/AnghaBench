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
struct pending_request {struct file_info* file_info; } ;
struct file_info {int /*<<< orphan*/  reqlists_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pending_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct pending_request *req)
{
	unsigned long flags;
	struct file_info *fi = req->file_info;

	FUNC1(&fi->reqlists_lock, flags);
	FUNC0(req);
	FUNC2(&fi->reqlists_lock, flags);
}