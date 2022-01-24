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
typedef  int /*<<< orphan*/  uint16_t ;
struct iscsi_iface_param_info {int param; int /*<<< orphan*/ * value; } ;
struct beiscsi_hba {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int /*<<< orphan*/  BEISCSI_VLAN_DISABLE ; 
 int EIO ; 
 int ENOSYS ; 
#define  ISCSI_NET_PARAM_VLAN_ENABLED 129 
#define  ISCSI_NET_PARAM_VLAN_TAG 128 
 int /*<<< orphan*/  ISCSI_VLAN_ENABLE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct beiscsi_hba* FUNC1 (struct Scsi_Host*) ; 
 scalar_t__ FUNC2 (struct beiscsi_hba*) ; 
 int FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct Scsi_Host *shost,
		      struct iscsi_iface_param_info *iface_param)
{
	struct beiscsi_hba *phba = FUNC1(shost);
	int ret = 0;

	/* Get the Interface Handle */
	if (FUNC2(phba)) {
		FUNC0(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BS_%d : Getting Interface Handle Failed\n");
		return -EIO;
	}

	switch (iface_param->param) {
	case ISCSI_NET_PARAM_VLAN_ENABLED:
		if (iface_param->value[0] != ISCSI_VLAN_ENABLE)
			ret = FUNC3(phba, BEISCSI_VLAN_DISABLE);
		break;
	case ISCSI_NET_PARAM_VLAN_TAG:
		ret = FUNC3(phba,
				    *((uint16_t *)iface_param->value));
		break;
	default:
		FUNC0(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
			    "BS_%d : Unkown Param Type : %d\n",
			    iface_param->param);
		return -ENOSYS;
	}
	return ret;
}