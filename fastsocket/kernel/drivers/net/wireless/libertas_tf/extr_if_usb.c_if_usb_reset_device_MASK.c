#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct if_usb_card {int /*<<< orphan*/  udev; struct cmd_ds_802_11_reset* ep_out_buf; } ;
struct TYPE_2__ {void* seqnum; void* result; void* size; void* command; } ;
struct cmd_ds_802_11_reset {void* action; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int CMD_802_11_RESET ; 
 int CMD_ACT_HALT ; 
 int /*<<< orphan*/  CMD_TYPE_REQUEST ; 
 int /*<<< orphan*/  LBTF_DEB_USB ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct if_usb_card*,struct cmd_ds_802_11_reset*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct if_usb_card *cardp)
{
	struct cmd_ds_802_11_reset *cmd = cardp->ep_out_buf + 4;
	int ret;

	FUNC2(LBTF_DEB_USB);

	*(__le32 *)cardp->ep_out_buf = FUNC1(CMD_TYPE_REQUEST);

	cmd->hdr.command = FUNC0(CMD_802_11_RESET);
	cmd->hdr.size = FUNC0(sizeof(struct cmd_ds_802_11_reset));
	cmd->hdr.result = FUNC0(0);
	cmd->hdr.seqnum = FUNC0(0x5a5a);
	cmd->action = FUNC0(CMD_ACT_HALT);
	FUNC6(cardp, cardp->ep_out_buf,
		     4 + sizeof(struct cmd_ds_802_11_reset), 0);

	FUNC4(100);
	ret = FUNC5(cardp->udev);
	FUNC4(100);

	FUNC3(LBTF_DEB_USB, "ret %d", ret);

	return ret;
}