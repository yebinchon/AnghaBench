#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zfcp_port {int /*<<< orphan*/  d_id; struct zfcp_adapter* adapter; } ;
struct zfcp_ls_adisc {int dummy; } ;
struct TYPE_4__ {unsigned long handler_data; int /*<<< orphan*/  ls_code; int /*<<< orphan*/  handler; int /*<<< orphan*/  d_id; struct zfcp_port* port; struct zfcp_adapter* adapter; int /*<<< orphan*/ * resp; int /*<<< orphan*/ * req; } ;
struct TYPE_6__ {int /*<<< orphan*/  nport_id; int /*<<< orphan*/  wwnn; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  code; } ;
struct zfcp_els_adisc {TYPE_1__ els; TYPE_3__ ls_adisc; TYPE_3__ ls_adisc_acc; int /*<<< orphan*/  resp; int /*<<< orphan*/  req; } ;
struct zfcp_adapter {int /*<<< orphan*/  scsi_host; } ;
struct TYPE_5__ {int /*<<< orphan*/  adisc_cache; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ZFCP_FC_CTELS_TMO ; 
 int /*<<< orphan*/  ZFCP_LS_ADISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct zfcp_els_adisc*) ; 
 struct zfcp_els_adisc* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 TYPE_2__ zfcp_data ; 
 int /*<<< orphan*/  zfcp_fc_adisc_handler ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct zfcp_port *port)
{
	struct zfcp_els_adisc *adisc;
	struct zfcp_adapter *adapter = port->adapter;
	int ret;

	adisc = FUNC4(zfcp_data.adisc_cache, GFP_ATOMIC);
	if (!adisc)
		return -ENOMEM;

	adisc->els.req = &adisc->req;
	adisc->els.resp = &adisc->resp;
	FUNC5(adisc->els.req, &adisc->ls_adisc,
		    sizeof(struct zfcp_ls_adisc));
	FUNC5(adisc->els.resp, &adisc->ls_adisc_acc,
		    sizeof(struct zfcp_ls_adisc));

	adisc->els.adapter = adapter;
	adisc->els.port = port;
	adisc->els.d_id = port->d_id;
	adisc->els.handler = zfcp_fc_adisc_handler;
	adisc->els.handler_data = (unsigned long) adisc;
	adisc->els.ls_code = adisc->ls_adisc.code = ZFCP_LS_ADISC;

	/* acc. to FC-FS, hard_nport_id in ADISC should not be set for ports
	   without FC-AL-2 capability, so we don't set it */
	adisc->ls_adisc.wwpn = FUNC2(adapter->scsi_host);
	adisc->ls_adisc.wwnn = FUNC0(adapter->scsi_host);
	adisc->ls_adisc.nport_id = FUNC1(adapter->scsi_host);

	ret = FUNC6(&adisc->els, ZFCP_FC_CTELS_TMO);
	if (ret)
		FUNC3(zfcp_data.adisc_cache, adisc);

	return ret;
}