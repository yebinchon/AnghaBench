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
struct fib {int dummy; } ;
struct aac_dev {int dummy; } ;
struct aac_close {void* cid; void* command; } ;

/* Variables and functions */
 int /*<<< orphan*/  ContainerCommand ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FsaNormal ; 
 int VM_CloseAll ; 
 struct fib* FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct fib*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct fib*) ; 

int FUNC7(struct aac_dev * dev)
{
	struct fib * fibctx;
	struct aac_close *cmd;
	int status;

	fibctx = FUNC0(dev);
	if (!fibctx)
		return -ENOMEM;
	FUNC3(fibctx);

	cmd = (struct aac_close *) FUNC6(fibctx);

	cmd->command = FUNC5(VM_CloseAll);
	cmd->cid = FUNC5(0xfffffffe);

	status = FUNC4(ContainerCommand,
			  fibctx,
			  sizeof(struct aac_close),
			  FsaNormal,
			  -2 /* Timeout silently */, 1,
			  NULL, NULL);

	if (status >= 0)
		FUNC1(fibctx);
	/* FIB should be freed only after getting the response from the F/W */
	if (status != -ERESTARTSYS)
		FUNC2(fibctx);
	return status;
}