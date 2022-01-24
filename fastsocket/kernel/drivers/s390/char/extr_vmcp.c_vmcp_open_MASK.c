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
struct vmcp_session {int /*<<< orphan*/  mutex; scalar_t__ resp_size; int /*<<< orphan*/ * response; int /*<<< orphan*/  bufsize; } ;
struct inode {int dummy; } ;
struct file {struct vmcp_session* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vmcp_session* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct vmcp_session *session;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	session = FUNC1(sizeof(*session), GFP_KERNEL);
	if (!session)
		return -ENOMEM;

	session->bufsize = PAGE_SIZE;
	session->response = NULL;
	session->resp_size = 0;
	FUNC2(&session->mutex);
	file->private_data = session;
	return FUNC3(inode, file);
}