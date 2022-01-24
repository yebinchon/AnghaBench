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
struct TYPE_4__ {int /*<<< orphan*/  cap_bm; int /*<<< orphan*/  port_mode; } ;
struct TYPE_3__ {int msg_id; } ;
union bfi_ioc_i2h_msg_u {TYPE_2__ fw_event; TYPE_1__ mh; } ;
struct bfi_mbmsg {int dummy; } ;
struct bfa_iocpf {int dummy; } ;
struct bfa_ioc {struct bfa_iocpf iocpf; } ;
typedef  enum bfa_mode { ____Placeholder_bfa_mode } bfa_mode ;

/* Variables and functions */
#define  BFI_IOC_I2H_DISABLE_REPLY 131 
#define  BFI_IOC_I2H_ENABLE_REPLY 130 
#define  BFI_IOC_I2H_GETATTR_REPLY 129 
#define  BFI_IOC_I2H_HBEAT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IOCPF_E_FWRSP_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_iocpf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioc_isrs ; 

__attribute__((used)) static void
FUNC5(struct bfa_ioc *ioc, struct bfi_mbmsg *m)
{
	union bfi_ioc_i2h_msg_u	*msg;
	struct bfa_iocpf *iocpf = &ioc->iocpf;

	msg = (union bfi_ioc_i2h_msg_u *) m;

	FUNC4(ioc, ioc_isrs);

	switch (msg->mh.msg_id) {
	case BFI_IOC_I2H_HBEAT:
		break;

	case BFI_IOC_I2H_ENABLE_REPLY:
		FUNC2(ioc,
			(enum bfa_mode)msg->fw_event.port_mode,
			msg->fw_event.cap_bm);
		break;

	case BFI_IOC_I2H_DISABLE_REPLY:
		FUNC1(iocpf, IOCPF_E_FWRSP_DISABLE);
		break;

	case BFI_IOC_I2H_GETATTR_REPLY:
		FUNC3(ioc);
		break;

	default:
		FUNC0(1);
	}
}