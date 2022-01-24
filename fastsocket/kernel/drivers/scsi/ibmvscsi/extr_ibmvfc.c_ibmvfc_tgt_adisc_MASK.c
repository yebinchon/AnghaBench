#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {unsigned long data; void (* function ) (unsigned long) ;scalar_t__ expires; } ;
struct ibmvfc_target {int /*<<< orphan*/  kref; TYPE_6__ timer; int /*<<< orphan*/  cancel_key; int /*<<< orphan*/  scsi_id; struct ibmvfc_host* vhost; } ;
struct TYPE_12__ {int* payload; } ;
struct TYPE_11__ {int /*<<< orphan*/  cancel_key; int /*<<< orphan*/  scsi_id; int /*<<< orphan*/  flags; } ;
struct ibmvfc_passthru_mad {TYPE_3__ fc_iu; TYPE_2__ iu; } ;
struct ibmvfc_host {scalar_t__ discovery_threads; TYPE_5__* login_buf; } ;
struct TYPE_10__ {struct ibmvfc_passthru_mad passthru; } ;
struct ibmvfc_event {TYPE_1__ iu; struct ibmvfc_target* tgt; } ;
struct TYPE_13__ {int scsi_id; int /*<<< orphan*/  node_name; int /*<<< orphan*/  port_name; } ;
struct TYPE_14__ {TYPE_4__ resp; } ;

/* Variables and functions */
 int HZ ; 
 int IBMVFC_ADISC ; 
 int /*<<< orphan*/  IBMVFC_ADISC_PLUS_CANCEL_TIMEOUT ; 
 int IBMVFC_ADISC_TIMEOUT ; 
 int /*<<< orphan*/  IBMVFC_FC_ELS ; 
 int /*<<< orphan*/  IBMVFC_MAD_FORMAT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_INIT_WAIT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 scalar_t__ disc_threads ; 
 scalar_t__ ibmvfc_adisc_timeout ; 
 struct ibmvfc_event* FUNC2 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 scalar_t__ FUNC5 (struct ibmvfc_event*,struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_tgt_adisc_done ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ibmvfc_target*,char*) ; 
 scalar_t__ FUNC12 (TYPE_6__*) ; 

__attribute__((used)) static void FUNC13(struct ibmvfc_target *tgt)
{
	struct ibmvfc_passthru_mad *mad;
	struct ibmvfc_host *vhost = tgt->vhost;
	struct ibmvfc_event *evt;

	if (vhost->discovery_threads >= disc_threads)
		return;

	FUNC7(&tgt->kref);
	evt = FUNC2(vhost);
	vhost->discovery_threads++;
	FUNC3(evt, ibmvfc_tgt_adisc_done, IBMVFC_MAD_FORMAT);
	evt->tgt = tgt;

	FUNC4(evt);
	mad = &evt->iu.passthru;
	mad->iu.flags = IBMVFC_FC_ELS;
	mad->iu.scsi_id = tgt->scsi_id;
	mad->iu.cancel_key = tgt->cancel_key;

	mad->fc_iu.payload[0] = IBMVFC_ADISC;
	FUNC9(&mad->fc_iu.payload[2], &vhost->login_buf->resp.port_name,
	       sizeof(vhost->login_buf->resp.port_name));
	FUNC9(&mad->fc_iu.payload[4], &vhost->login_buf->resp.node_name,
	       sizeof(vhost->login_buf->resp.node_name));
	mad->fc_iu.payload[6] = vhost->login_buf->resp.scsi_id & 0x00ffffff;

	if (FUNC12(&tgt->timer))
		FUNC10(&tgt->timer, jiffies + (IBMVFC_ADISC_TIMEOUT * HZ));
	else {
		tgt->timer.data = (unsigned long) tgt;
		tgt->timer.expires = jiffies + (IBMVFC_ADISC_TIMEOUT * HZ);
		tgt->timer.function = (void (*)(unsigned long))ibmvfc_adisc_timeout;
		FUNC0(&tgt->timer);
	}

	FUNC6(tgt, IBMVFC_TGT_ACTION_INIT_WAIT);
	if (FUNC5(evt, vhost, IBMVFC_ADISC_PLUS_CANCEL_TIMEOUT)) {
		vhost->discovery_threads--;
		FUNC1(&tgt->timer);
		FUNC6(tgt, IBMVFC_TGT_ACTION_NONE);
		FUNC8(&tgt->kref, ibmvfc_release_tgt);
	} else
		FUNC11(tgt, "Sent ADISC\n");
}