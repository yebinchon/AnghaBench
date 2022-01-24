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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  v4_addr; int /*<<< orphan*/  v6_addr; } ;
struct iscsi_path {TYPE_1__ src; int /*<<< orphan*/ * mac_addr; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  handle; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct cnic_sock {int /*<<< orphan*/  flags; int /*<<< orphan*/ * ha; int /*<<< orphan*/ * src_ip; int /*<<< orphan*/  vlan_id; } ;
struct cnic_local {struct cnic_sock* csk_tbl; int /*<<< orphan*/ * ulp_ops; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 size_t CNIC_ULP_L4 ; 
 int EINVAL ; 
 int ENODEV ; 
#define  ISCSI_UEVENT_PATH_UPDATE 128 
 int /*<<< orphan*/  L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE ; 
 int MAX_CM_SK_TBL_SZ ; 
 int /*<<< orphan*/  SK_F_CONNECT_START ; 
 int /*<<< orphan*/  SK_F_IPV6 ; 
 int /*<<< orphan*/  SK_F_OFFLD_COMPLETE ; 
 int /*<<< orphan*/  SK_F_OFFLD_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_local*,struct cnic_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct cnic_dev *dev, u32 msg_type,
				  char *buf, u16 len)
{
	int rc = -EINVAL;

	switch (msg_type) {
	case ISCSI_UEVENT_PATH_UPDATE: {
		struct cnic_local *cp;
		u32 l5_cid;
		struct cnic_sock *csk;
		struct iscsi_path *path_resp;

		if (len < sizeof(*path_resp))
			break;

		path_resp = (struct iscsi_path *) buf;
		cp = dev->cnic_priv;
		l5_cid = (u32) path_resp->handle;
		if (l5_cid >= MAX_CM_SK_TBL_SZ)
			break;

		FUNC9();
		if (!FUNC8(cp->ulp_ops[CNIC_ULP_L4])) {
			rc = -ENODEV;
			FUNC10();
			break;
		}
		csk = &cp->csk_tbl[l5_cid];
		FUNC4(csk);
		if (FUNC3(csk) &&
		    FUNC11(SK_F_CONNECT_START, &csk->flags)) {

			csk->vlan_id = path_resp->vlan_id;

			FUNC7(csk->ha, path_resp->mac_addr, 6);
			if (FUNC11(SK_F_IPV6, &csk->flags))
				FUNC7(&csk->src_ip[0], &path_resp->src.v6_addr,
				       sizeof(struct in6_addr));
			else
				FUNC7(&csk->src_ip[0], &path_resp->src.v4_addr,
				       sizeof(struct in_addr));

			if (FUNC6(csk->ha)) {
				FUNC1(csk);
			} else if (!FUNC11(SK_F_OFFLD_SCHED, &csk->flags) &&
				!FUNC11(SK_F_OFFLD_COMPLETE, &csk->flags)) {

				FUNC2(cp, csk,
					L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE);
				FUNC0(SK_F_CONNECT_START, &csk->flags);
			}
		}
		FUNC5(csk);
		FUNC10();
		rc = 0;
	}
	}

	return rc;
}