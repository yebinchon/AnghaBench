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
struct nlattr {int dummy; } ;
struct iscsi_iface_param_info {int param; } ;
struct beiscsi_hba {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  ISCSI_BOOTPROTO_STATIC ; 
#define  ISCSI_NET_PARAM_IPV4_ADDR 130 
#define  ISCSI_NET_PARAM_IPV4_BOOTPROTO 129 
#define  ISCSI_NET_PARAM_IPV4_SUBNET 128 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct beiscsi_hba* FUNC1 (struct Scsi_Host*) ; 
 int FUNC2 (struct beiscsi_hba*,struct iscsi_iface_param_info*,struct iscsi_iface_param_info*,int /*<<< orphan*/ ) ; 
 struct iscsi_iface_param_info* FUNC3 (struct nlattr*) ; 
 struct nlattr* FUNC4 (void*,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static int
FUNC5(struct Scsi_Host *shost,
		struct iscsi_iface_param_info *iface_param,
		void *data, uint32_t dt_len)
{
	struct beiscsi_hba *phba = FUNC1(shost);
	struct iscsi_iface_param_info *iface_ip = NULL;
	struct iscsi_iface_param_info *iface_subnet = NULL;
	struct nlattr *nla;
	int ret;


	switch (iface_param->param) {
	case ISCSI_NET_PARAM_IPV4_BOOTPROTO:
		nla = FUNC4(data, dt_len, ISCSI_NET_PARAM_IPV4_ADDR);
		if (nla)
			iface_ip = FUNC3(nla);

		nla = FUNC4(data, dt_len, ISCSI_NET_PARAM_IPV4_SUBNET);
		if (nla)
			iface_subnet = FUNC3(nla);
		break;
	case ISCSI_NET_PARAM_IPV4_ADDR:
		iface_ip = iface_param;
		nla = FUNC4(data, dt_len, ISCSI_NET_PARAM_IPV4_SUBNET);
		if (nla)
			iface_subnet = FUNC3(nla);
		break;
	case ISCSI_NET_PARAM_IPV4_SUBNET:
		iface_subnet = iface_param;
		nla = FUNC4(data, dt_len, ISCSI_NET_PARAM_IPV4_ADDR);
		if (nla)
			iface_ip = FUNC3(nla);
		break;
	default:
		FUNC0(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BS_%d : Unsupported param %d\n",
			    iface_param->param);
	}

	if (!iface_ip || !iface_subnet) {
		FUNC0(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BS_%d : IP and Subnet Mask required\n");
		return -EINVAL;
	}

	ret = FUNC2(phba, iface_ip, iface_subnet,
			ISCSI_BOOTPROTO_STATIC);

	return ret;
}