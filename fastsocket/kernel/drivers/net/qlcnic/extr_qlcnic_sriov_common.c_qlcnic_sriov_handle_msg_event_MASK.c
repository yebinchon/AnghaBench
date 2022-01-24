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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_vf_info {TYPE_1__* adapter; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_bc_hdr {int msg_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  ahw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
#define  QLC_BC_COMMAND 129 
#define  QLC_BC_RESPONSE 128 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_sriov*,struct qlcnic_bc_hdr*,struct qlcnic_vf_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_bc_hdr*,struct qlcnic_vf_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qlcnic_sriov *sriov,
					  struct qlcnic_vf_info *vf)
{
	struct qlcnic_bc_hdr hdr;
	u32 *ptr = (u32 *)&hdr;
	u8 msg_type, i;

	for (i = 2; i < 6; i++)
		ptr[i - 2] = FUNC3(FUNC0(vf->adapter->ahw, i));
	msg_type = hdr.msg_type;

	switch (msg_type) {
	case QLC_BC_COMMAND:
		FUNC1(sriov, &hdr, vf);
		break;
	case QLC_BC_RESPONSE:
		FUNC2(&hdr, vf);
		break;
	}
}