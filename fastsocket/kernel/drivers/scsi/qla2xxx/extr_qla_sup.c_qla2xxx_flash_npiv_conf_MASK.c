#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vid ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct qla_npiv_header {scalar_t__ version; scalar_t__ entries; scalar_t__ checksum; } ;
struct qla_npiv_entry {scalar_t__ flags; scalar_t__ vf_id; int /*<<< orphan*/  f_qos; int /*<<< orphan*/  q_qos; int /*<<< orphan*/  node_name; int /*<<< orphan*/  port_name; } ;
struct TYPE_9__ {scalar_t__ nic_core_reset_hdlr_active; } ;
struct qla_hw_data {int flt_region_npiv_conf; int /*<<< orphan*/ * npiv_info; TYPE_2__* isp_ops; TYPE_1__ flags; } ;
struct fc_vport_identifiers {int disable; void* node_name; void* port_name; int /*<<< orphan*/  vport_type; int /*<<< orphan*/  roles; } ;
struct fc_vport {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  host; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* read_optrom ) (TYPE_3__*,int /*<<< orphan*/ *,int,int) ;} ;

/* Variables and functions */
 int BIT_0 ; 
 int /*<<< orphan*/  FC_PORTTYPE_NPIV ; 
 int /*<<< orphan*/  FC_PORT_ROLE_FCP_INITIATOR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 int NPIV_CONFIG_SIZE ; 
 int QLA_PRECONFIG_VPORTS ; 
 scalar_t__ FUNC4 (int) ; 
 struct fc_vport* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_vport_identifiers*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct qla_npiv_entry*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_vport_identifiers*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,int,unsigned long long,unsigned long long,...) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *,int,int) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 

void
FUNC16(scsi_qla_host_t *vha)
{
#define NPIV_CONFIG_SIZE	(16*1024)
	void *data;
	uint16_t *wptr;
	uint16_t cnt, chksum;
	int i;
	struct qla_npiv_header hdr;
	struct qla_npiv_entry *entry;
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC2(ha) && !FUNC3(ha) &&
	    !FUNC0(ha) && !FUNC1(ha))
		return;

	if (ha->flags.nic_core_reset_hdlr_active)
		return;

	ha->isp_ops->read_optrom(vha, (uint8_t *)&hdr,
	    ha->flt_region_npiv_conf << 2, sizeof(struct qla_npiv_header));
	if (hdr.version == FUNC4(0xffff))
		return;
	if (hdr.version != FUNC4(1)) {
		FUNC11(ql_dbg_user, vha, 0x7090,
		    "Unsupported NPIV-Config "
		    "detected: version=0x%x entries=0x%x checksum=0x%x.\n",
		    FUNC8(hdr.version), FUNC8(hdr.entries),
		    FUNC8(hdr.checksum));
		return;
	}

	data = FUNC7(NPIV_CONFIG_SIZE, GFP_KERNEL);
	if (!data) {
		FUNC12(ql_log_warn, vha, 0x7091,
		    "Unable to allocate memory for data.\n");
		return;
	}

	ha->isp_ops->read_optrom(vha, (uint8_t *)data,
	    ha->flt_region_npiv_conf << 2, NPIV_CONFIG_SIZE);

	cnt = (sizeof(struct qla_npiv_header) + FUNC8(hdr.entries) *
	    sizeof(struct qla_npiv_entry)) >> 1;
	for (wptr = data, chksum = 0; cnt; cnt--)
		chksum += FUNC8(*wptr++);
	if (chksum) {
		FUNC11(ql_dbg_user, vha, 0x7092,
		    "Inconsistent NPIV-Config "
		    "detected: version=0x%x entries=0x%x checksum=0x%x.\n",
		    FUNC8(hdr.version), FUNC8(hdr.entries),
		    FUNC8(hdr.checksum));
		goto done;
	}

	entry = data + sizeof(struct qla_npiv_header);
	cnt = FUNC8(hdr.entries);
	for (i = 0; cnt; cnt--, entry++, i++) {
		uint16_t flags;
		struct fc_vport_identifiers vid;
		struct fc_vport *vport;

		FUNC9(&ha->npiv_info[i], entry, sizeof(struct qla_npiv_entry));

		flags = FUNC8(entry->flags);
		if (flags == 0xffff)
			continue;
		if ((flags & BIT_0) == 0)
			continue;

		FUNC10(&vid, 0, sizeof(vid));
		vid.roles = FC_PORT_ROLE_FCP_INITIATOR;
		vid.vport_type = FC_PORTTYPE_NPIV;
		vid.disable = false;
		vid.port_name = FUNC15(entry->port_name);
		vid.node_name = FUNC15(entry->node_name);

		FUNC11(ql_dbg_user, vha, 0x7093,
		    "NPIV[%02x]: wwpn=%llx "
		    "wwnn=%llx vf_id=0x%x Q_qos=0x%x F_qos=0x%x.\n", cnt,
		    (unsigned long long)vid.port_name,
		    (unsigned long long)vid.node_name,
		    FUNC8(entry->vf_id),
		    entry->q_qos, entry->f_qos);

		if (i < QLA_PRECONFIG_VPORTS) {
			vport = FUNC5(vha->host, 0, &vid);
			if (!vport)
				FUNC12(ql_log_warn, vha, 0x7094,
				    "NPIV-Config Failed to create vport [%02x]: "
				    "wwpn=%llx wwnn=%llx.\n", cnt,
				    (unsigned long long)vid.port_name,
				    (unsigned long long)vid.node_name);
		}
	}
done:
	FUNC6(data);
}