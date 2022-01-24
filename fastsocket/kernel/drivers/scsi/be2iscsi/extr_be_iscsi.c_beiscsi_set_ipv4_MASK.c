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
typedef  int /*<<< orphan*/  uint32_t ;
struct iscsi_iface_param_info {int param; int* value; } ;
struct beiscsi_hba {int /*<<< orphan*/  ipv4_iface; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int ISCSI_BOOTPROTO_DHCP ; 
 int ISCSI_BOOTPROTO_STATIC ; 
 int ISCSI_IFACE_ENABLE ; 
#define  ISCSI_NET_PARAM_IFACE_ENABLE 134 
#define  ISCSI_NET_PARAM_IPV4_ADDR 133 
#define  ISCSI_NET_PARAM_IPV4_BOOTPROTO 132 
#define  ISCSI_NET_PARAM_IPV4_GW 131 
#define  ISCSI_NET_PARAM_IPV4_SUBNET 130 
#define  ISCSI_NET_PARAM_VLAN_ENABLED 129 
#define  ISCSI_NET_PARAM_VLAN_TAG 128 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct Scsi_Host*,struct iscsi_iface_param_info*,void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct Scsi_Host*,struct iscsi_iface_param_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct beiscsi_hba* FUNC5 (struct Scsi_Host*) ; 
 int FUNC6 (struct beiscsi_hba*,struct iscsi_iface_param_info*) ; 
 int FUNC7 (struct beiscsi_hba*,struct iscsi_iface_param_info*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC8(struct Scsi_Host *shost,
		struct iscsi_iface_param_info *iface_param,
		void *data, uint32_t dt_len)
{
	struct beiscsi_hba *phba = FUNC5(shost);
	int ret = 0;

	/* Check the param */
	switch (iface_param->param) {
	case ISCSI_NET_PARAM_IPV4_GW:
		ret = FUNC6(phba, iface_param);
		break;
	case ISCSI_NET_PARAM_IPV4_BOOTPROTO:
		if (iface_param->value[0] == ISCSI_BOOTPROTO_DHCP)
			ret = FUNC7(phba, iface_param,
					NULL, ISCSI_BOOTPROTO_DHCP);
		else if (iface_param->value[0] == ISCSI_BOOTPROTO_STATIC)
			ret = FUNC2(shost, iface_param,
						    data, dt_len);
		else
			FUNC1(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
				    "BS_%d : Invalid BOOTPROTO: %d\n",
				    iface_param->value[0]);
		break;
	case ISCSI_NET_PARAM_IFACE_ENABLE:
		if (iface_param->value[0] == ISCSI_IFACE_ENABLE)
			ret = FUNC0(phba);
		else
			FUNC4(phba->ipv4_iface);
		break;
	case ISCSI_NET_PARAM_IPV4_SUBNET:
	case ISCSI_NET_PARAM_IPV4_ADDR:
		ret = FUNC2(shost, iface_param,
					    data, dt_len);
		break;
	case ISCSI_NET_PARAM_VLAN_ENABLED:
	case ISCSI_NET_PARAM_VLAN_TAG:
		ret = FUNC3(shost, iface_param);
		break;
	default:
		FUNC1(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BS_%d : Param %d not supported\n",
			    iface_param->param);
	}

	return ret;
}