#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hw_fib {int dummy; } ;
struct fib {TYPE_2__* hw_fib_va; struct aac_dev* dev; } ;
struct aac_fibhdr {int dummy; } ;
struct aac_dev {int dummy; } ;
struct aac_aifcmd {int command; } ;
typedef  int /*<<< orphan*/  fib_callback ;
struct TYPE_3__ {int XferState; } ;
struct TYPE_4__ {TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  AifReqEvent ; 
 int /*<<< orphan*/  AifRequest ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FsaNormal ; 
 int /*<<< orphan*/  NoMoreAifDataAvailable ; 
 int /*<<< orphan*/  FUNC1 (struct fib*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct fib*) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct fib*) ; 

__attribute__((used)) static void FUNC8(void *context, struct fib * fibptr)
{
	struct fib *fibctx;
	struct aac_dev *dev;
	struct aac_aifcmd *cmd;
	int status;

	fibctx = (struct fib *)context;
	FUNC0(fibptr == NULL);
	dev = fibptr->dev;

	if (fibptr->hw_fib_va->header.XferState &
	    FUNC6(NoMoreAifDataAvailable)) {
		FUNC1(fibptr);
		FUNC2(fibptr);
		return;
	}

	FUNC5(dev, 0, 1, 0, fibptr->hw_fib_va);
	FUNC3(fibctx);
	cmd = (struct aac_aifcmd *) FUNC7(fibctx);
	cmd->command = FUNC6(AifReqEvent);
	status = FUNC4(AifRequest,
		fibctx,
		sizeof(struct hw_fib)-sizeof(struct aac_fibhdr),
		FsaNormal,
		0, 1,
		(fib_callback)aac_aif_callback, fibctx);
}