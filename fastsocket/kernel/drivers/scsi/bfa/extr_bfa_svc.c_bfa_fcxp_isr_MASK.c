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
struct TYPE_2__ {int msg_id; } ;
struct bfi_msg_s {TYPE_1__ mhdr; } ;
struct bfi_fcxp_send_rsp_s {int dummy; } ;
struct bfa_s {int dummy; } ;

/* Variables and functions */
#define  BFI_FCXP_I2H_SEND_RSP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_s*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_s*,struct bfi_fcxp_send_rsp_s*) ; 

void
FUNC3(struct bfa_s *bfa, struct bfi_msg_s *msg)
{
	switch (msg->mhdr.msg_id) {
	case BFI_FCXP_I2H_SEND_RSP:
		FUNC2(bfa, (struct bfi_fcxp_send_rsp_s *) msg);
		break;

	default:
		FUNC1(bfa, msg->mhdr.msg_id);
		FUNC0(1);
	}
}