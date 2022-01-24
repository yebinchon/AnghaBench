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
struct iscsi_iface {int dummy; } ;
struct beiscsi_hba {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct be_cmd_get_def_gateway_resp {TYPE_1__ ip_addr; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  gateway ;
typedef  enum iscsi_param_type { ____Placeholder_iscsi_param_type } iscsi_param_type ;

/* Variables and functions */
 int /*<<< orphan*/  BE2_IPV4 ; 
 int ENOSYS ; 
#define  ISCSI_NET_PARAM_IFACE_ENABLE 136 
#define  ISCSI_NET_PARAM_IPV4_ADDR 135 
#define  ISCSI_NET_PARAM_IPV4_BOOTPROTO 134 
#define  ISCSI_NET_PARAM_IPV4_GW 133 
#define  ISCSI_NET_PARAM_IPV4_SUBNET 132 
#define  ISCSI_NET_PARAM_IPV6_ADDR 131 
#define  ISCSI_NET_PARAM_VLAN_ENABLED 130 
#define  ISCSI_NET_PARAM_VLAN_ID 129 
#define  ISCSI_NET_PARAM_VLAN_PRIORITY 128 
 int FUNC0 (struct beiscsi_hba*,struct iscsi_iface*,int,char*) ; 
 struct beiscsi_hba* FUNC1 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC2 (struct iscsi_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_cmd_get_def_gateway_resp*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct beiscsi_hba*,int /*<<< orphan*/ ,struct be_cmd_get_def_gateway_resp*) ; 
 int FUNC5 (char*,char*,...) ; 

int FUNC6(struct iscsi_iface *iface,
		enum iscsi_param_type param_type,
		int param, char *buf)
{
	struct Scsi_Host *shost = FUNC2(iface);
	struct beiscsi_hba *phba = FUNC1(shost);
	struct be_cmd_get_def_gateway_resp gateway;
	int len = -ENOSYS;

	switch (param) {
	case ISCSI_NET_PARAM_IPV4_ADDR:
	case ISCSI_NET_PARAM_IPV4_SUBNET:
	case ISCSI_NET_PARAM_IPV4_BOOTPROTO:
	case ISCSI_NET_PARAM_IPV6_ADDR:
	case ISCSI_NET_PARAM_VLAN_ENABLED:
	case ISCSI_NET_PARAM_VLAN_ID:
	case ISCSI_NET_PARAM_VLAN_PRIORITY:
		len = FUNC0(phba, iface, param, buf);
		break;
	case ISCSI_NET_PARAM_IFACE_ENABLE:
		len = FUNC5(buf, "enabled\n");
		break;
	case ISCSI_NET_PARAM_IPV4_GW:
		FUNC3(&gateway, 0, sizeof(gateway));
		len = FUNC4(phba, BE2_IPV4, &gateway);
		if (!len)
			len = FUNC5(buf, "%pI4\n", &gateway.ip_addr.addr);
		break;
	default:
		len = -ENOSYS;
	}

	return len;
}