#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {int length; int /*<<< orphan*/  type; } ;
struct viosrp_capabilities {TYPE_9__ common; int /*<<< orphan*/  buffer; } ;
struct TYPE_16__ {struct viosrp_capabilities capabilities; } ;
struct TYPE_17__ {TYPE_2__ mad; } ;
struct srp_event_struct {TYPE_3__ iu; } ;
struct TYPE_20__ {int length; void* server_support; int /*<<< orphan*/  cap_type; } ;
struct TYPE_21__ {int /*<<< orphan*/  type; TYPE_6__ common; } ;
struct TYPE_18__ {int length; void* server_support; int /*<<< orphan*/  cap_type; } ;
struct TYPE_19__ {int ecl; TYPE_4__ common; } ;
struct TYPE_22__ {char* name; char* loc; TYPE_7__ reserve; TYPE_5__ migration; int /*<<< orphan*/  flags; } ;
struct ibmvscsi_host_data {TYPE_10__* host; TYPE_11__* dev; TYPE_8__ caps; int /*<<< orphan*/  caps_addr; scalar_t__ client_migrated; int /*<<< orphan*/  pool; } ;
struct device_node {int dummy; } ;
struct TYPE_15__ {struct device_node* of_node; } ;
struct TYPE_14__ {TYPE_1__ archdata; } ;
struct TYPE_13__ {int /*<<< orphan*/  host_lock; TYPE_11__ shost_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_LIST_SUPPORTED ; 
 int /*<<< orphan*/  CLIENT_MIGRATED ; 
 int /*<<< orphan*/  CLIENT_RESERVE_SCSI_2 ; 
 int /*<<< orphan*/  MIGRATION_CAPABILITIES ; 
 int /*<<< orphan*/  RESERVATION_CAPABILITIES ; 
 void* SERVER_SUPPORTS_CAP ; 
 int /*<<< orphan*/  VIOSRP_CAPABILITIES_TYPE ; 
 int /*<<< orphan*/  VIOSRP_MAD_FORMAT ; 
 int /*<<< orphan*/  capabilities_rsp ; 
 scalar_t__ client_reserve ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,char*) ; 
 char const* FUNC2 (TYPE_11__*) ; 
 struct srp_event_struct* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct srp_event_struct*,struct ibmvscsi_host_data*,int) ; 
 int info_timeout ; 
 int /*<<< orphan*/  FUNC5 (struct srp_event_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct viosrp_capabilities*,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC11(struct ibmvscsi_host_data *hostdata)
{
	struct viosrp_capabilities *req;
	struct srp_event_struct *evt_struct;
	unsigned long flags;
	struct device_node *of_node = hostdata->dev->archdata.of_node;
	const char *location;

	evt_struct = FUNC3(&hostdata->pool);
	FUNC0(!evt_struct);

	FUNC5(evt_struct, capabilities_rsp,
			  VIOSRP_MAD_FORMAT, info_timeout);

	req = &evt_struct->iu.mad.capabilities;
	FUNC6(req, 0, sizeof(*req));

	hostdata->caps.flags = CAP_LIST_SUPPORTED;
	if (hostdata->client_migrated)
		hostdata->caps.flags |= CLIENT_MIGRATED;

	FUNC10(hostdata->caps.name, FUNC2(&hostdata->host->shost_gendev),
		sizeof(hostdata->caps.name));
	hostdata->caps.name[sizeof(hostdata->caps.name) - 1] = '\0';

	location = FUNC7(of_node, "ibm,loc-code", NULL);
	location = location ? location : FUNC2(hostdata->dev);
	FUNC10(hostdata->caps.loc, location, sizeof(hostdata->caps.loc));
	hostdata->caps.loc[sizeof(hostdata->caps.loc) - 1] = '\0';

	req->common.type = VIOSRP_CAPABILITIES_TYPE;
	req->buffer = hostdata->caps_addr;

	hostdata->caps.migration.common.cap_type = MIGRATION_CAPABILITIES;
	hostdata->caps.migration.common.length = sizeof(hostdata->caps.migration);
	hostdata->caps.migration.common.server_support = SERVER_SUPPORTS_CAP;
	hostdata->caps.migration.ecl = 1;

	if (client_reserve) {
		hostdata->caps.reserve.common.cap_type = RESERVATION_CAPABILITIES;
		hostdata->caps.reserve.common.length = sizeof(hostdata->caps.reserve);
		hostdata->caps.reserve.common.server_support = SERVER_SUPPORTS_CAP;
		hostdata->caps.reserve.type = CLIENT_RESERVE_SCSI_2;
		req->common.length = sizeof(hostdata->caps);
	} else
		req->common.length = sizeof(hostdata->caps) - sizeof(hostdata->caps.reserve);

	FUNC8(hostdata->host->host_lock, flags);
	if (FUNC4(evt_struct, hostdata, info_timeout * 2))
		FUNC1(hostdata->dev, "couldn't send CAPABILITIES_REQ!\n");
	FUNC9(hostdata->host->host_lock, flags);
}