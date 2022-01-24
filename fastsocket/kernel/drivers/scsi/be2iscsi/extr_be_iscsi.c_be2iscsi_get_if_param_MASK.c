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
struct iscsi_iface {scalar_t__ iface_type; } ;
struct beiscsi_hba {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  subnet_mask; int /*<<< orphan*/  addr; } ;
struct be_cmd_get_if_info_resp {int vlan_priority; TYPE_1__ ip_addr; int /*<<< orphan*/  dhcp_state; } ;
typedef  int /*<<< orphan*/  if_info ;

/* Variables and functions */
 int BE2_IPV4 ; 
 int BE2_IPV6 ; 
 int BEISCSI_VLAN_DISABLE ; 
 int EINVAL ; 
 scalar_t__ ISCSI_IFACE_TYPE_IPV6 ; 
 int ISCSI_MAX_VLAN_ID ; 
 int ISCSI_MAX_VLAN_PRIORITY ; 
#define  ISCSI_NET_PARAM_IPV4_ADDR 134 
#define  ISCSI_NET_PARAM_IPV4_BOOTPROTO 133 
#define  ISCSI_NET_PARAM_IPV4_SUBNET 132 
#define  ISCSI_NET_PARAM_IPV6_ADDR 131 
#define  ISCSI_NET_PARAM_VLAN_ENABLED 130 
#define  ISCSI_NET_PARAM_VLAN_ID 129 
#define  ISCSI_NET_PARAM_VLAN_PRIORITY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct be_cmd_get_if_info_resp*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct beiscsi_hba*,int,struct be_cmd_get_if_info_resp*) ; 
 int FUNC3 (char*,char*,...) ; 

__attribute__((used)) static int FUNC4(struct beiscsi_hba *phba,
		struct iscsi_iface *iface, int param,
		char *buf)
{
	struct be_cmd_get_if_info_resp if_info;
	int len, ip_type = BE2_IPV4;

	FUNC1(&if_info, 0, sizeof(if_info));

	if (iface->iface_type == ISCSI_IFACE_TYPE_IPV6)
		ip_type = BE2_IPV6;

	len = FUNC2(phba, ip_type, &if_info);
	if (len)
		return len;

	switch (param) {
	case ISCSI_NET_PARAM_IPV4_ADDR:
		len = FUNC3(buf, "%pI4\n", &if_info.ip_addr.addr);
		break;
	case ISCSI_NET_PARAM_IPV6_ADDR:
		len = FUNC3(buf, "%pI6\n", &if_info.ip_addr.addr);
		break;
	case ISCSI_NET_PARAM_IPV4_BOOTPROTO:
		if (!if_info.dhcp_state)
			len = FUNC3(buf, "static\n");
		else
			len = FUNC3(buf, "dhcp\n");
		break;
	case ISCSI_NET_PARAM_IPV4_SUBNET:
		len = FUNC3(buf, "%pI4\n", &if_info.ip_addr.subnet_mask);
		break;
	case ISCSI_NET_PARAM_VLAN_ENABLED:
		len = FUNC3(buf, "%s\n",
			     (if_info.vlan_priority == BEISCSI_VLAN_DISABLE)
			     ? "Disabled\n" : "Enabled\n");
		break;
	case ISCSI_NET_PARAM_VLAN_ID:
		if (if_info.vlan_priority == BEISCSI_VLAN_DISABLE)
			return -EINVAL;
		else
			len = FUNC3(buf, "%d\n",
				     (if_info.vlan_priority &
				     ISCSI_MAX_VLAN_ID));
		break;
	case ISCSI_NET_PARAM_VLAN_PRIORITY:
		if (if_info.vlan_priority == BEISCSI_VLAN_DISABLE)
			return -EINVAL;
		else
			len = FUNC3(buf, "%d\n",
				     ((if_info.vlan_priority >> 13) &
				     ISCSI_MAX_VLAN_PRIORITY));
		break;
	default:
		FUNC0(1);
	}

	return len;
}