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
struct pending_request {int /*<<< orphan*/  list; struct file_info* file_info; } ;
struct file_info {int /*<<< orphan*/  wait_complete; int /*<<< orphan*/  req_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct pending_request *req)
{
	struct file_info *fi = req->file_info;

	FUNC0(&req->list, &fi->req_complete);
 	FUNC1(&fi->wait_complete);
}