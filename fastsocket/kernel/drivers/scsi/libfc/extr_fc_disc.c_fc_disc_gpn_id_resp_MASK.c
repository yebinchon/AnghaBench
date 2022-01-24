#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct fc_seq {int dummy; } ;
struct TYPE_3__ {int port_name; int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {int /*<<< orphan*/  kref; int /*<<< orphan*/  disc_id; TYPE_1__ ids; struct fc_lport* local_port; } ;
struct fc_ns_gid_pn {int /*<<< orphan*/  fn_wwpn; } ;
struct TYPE_4__ {int /*<<< orphan*/  rport_destroy; int /*<<< orphan*/  (* rport_logoff ) (struct fc_rport_priv*) ;int /*<<< orphan*/  (* rport_login ) (struct fc_rport_priv*) ;struct fc_rport_priv* (* rport_create ) (struct fc_lport*,int /*<<< orphan*/ ) ;} ;
struct fc_disc {int /*<<< orphan*/  disc_mutex; int /*<<< orphan*/  disc_id; } ;
struct fc_lport {TYPE_2__ tt; struct fc_disc disc; } ;
struct fc_frame_header {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {int /*<<< orphan*/  ct_cmd; int /*<<< orphan*/  ct_explan; int /*<<< orphan*/  ct_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_disc*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 scalar_t__ FC_FS_ACC ; 
 scalar_t__ FC_FS_RJT ; 
 scalar_t__ FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_disc*) ; 
 struct fc_ct_hdr* FUNC4 (struct fc_frame*,int) ; 
 int FUNC5 (struct fc_frame*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_rport_priv*) ; 
 struct fc_rport_priv* FUNC12 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct fc_rport_priv*) ; 

__attribute__((used)) static void FUNC16(struct fc_seq *sp, struct fc_frame *fp,
				void *rdata_arg)
{
	struct fc_rport_priv *rdata = rdata_arg;
	struct fc_rport_priv *new_rdata;
	struct fc_lport *lport;
	struct fc_disc *disc;
	struct fc_ct_hdr *cp;
	struct fc_ns_gid_pn *pn;
	u64 port_name;

	lport = rdata->local_port;
	disc = &lport->disc;

	FUNC8(&disc->disc_mutex);
	if (FUNC2(fp) == -FC_EX_CLOSED)
		goto out;
	if (FUNC1(fp))
		goto redisc;

	cp = FUNC4(fp, sizeof(*cp));
	if (!cp)
		goto redisc;
	if (FUNC10(cp->ct_cmd) == FC_FS_ACC) {
		if (FUNC5(fp) < sizeof(struct fc_frame_header) +
		    sizeof(*cp) + sizeof(*pn))
			goto redisc;
		pn = (struct fc_ns_gid_pn *)(cp + 1);
		port_name = FUNC6(&pn->fn_wwpn);
		if (rdata->ids.port_name == -1)
			rdata->ids.port_name = port_name;
		else if (rdata->ids.port_name != port_name) {
			FUNC0(disc, "GPN_ID accepted.  WWPN changed. "
				    "Port-id %6.6x wwpn %16.16llx\n",
				    rdata->ids.port_id, port_name);
			lport->tt.rport_logoff(rdata);

			new_rdata = lport->tt.rport_create(lport,
							   rdata->ids.port_id);
			if (new_rdata) {
				new_rdata->disc_id = disc->disc_id;
				lport->tt.rport_login(new_rdata);
			}
			goto out;
		}
		rdata->disc_id = disc->disc_id;
		lport->tt.rport_login(rdata);
	} else if (FUNC10(cp->ct_cmd) == FC_FS_RJT) {
		FUNC0(disc, "GPN_ID rejected reason %x exp %x\n",
			    cp->ct_reason, cp->ct_explan);
		lport->tt.rport_logoff(rdata);
	} else {
		FUNC0(disc, "GPN_ID unexpected response code %x\n",
			    FUNC10(cp->ct_cmd));
redisc:
		FUNC3(disc);
	}
out:
	FUNC9(&disc->disc_mutex);
	FUNC7(&rdata->kref, lport->tt.rport_destroy);
}