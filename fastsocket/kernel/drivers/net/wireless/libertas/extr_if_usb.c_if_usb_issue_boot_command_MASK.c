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
struct if_usb_card {struct bootcmd* ep_out_buf; } ;
struct bootcmd {int cmd; int /*<<< orphan*/  pad; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_CMD_MAGIC_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct if_usb_card*,struct bootcmd*,int) ; 

__attribute__((used)) static int FUNC3(struct if_usb_card *cardp, int ivalue)
{
	struct bootcmd *bootcmd = cardp->ep_out_buf;

	/* Prepare command */
	bootcmd->magic = FUNC0(BOOT_CMD_MAGIC_NUMBER);
	bootcmd->cmd = ivalue;
	FUNC1(bootcmd->pad, 0, sizeof(bootcmd->pad));

	/* Issue command */
	FUNC2(cardp, cardp->ep_out_buf, sizeof(*bootcmd));

	return 0;
}