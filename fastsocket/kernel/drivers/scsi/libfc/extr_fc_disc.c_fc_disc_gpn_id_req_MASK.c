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
struct TYPE_4__ {int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {int /*<<< orphan*/  kref; TYPE_2__ ids; } ;
struct fc_ns_fid {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* elsct_send ) (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_rport_priv*,int) ;} ;
struct fc_lport {int r_a_tov; TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FC_NS_GPN_ID ; 
 int /*<<< orphan*/  fc_disc_gpn_id_resp ; 
 struct fc_frame* FUNC0 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_rport_priv*,int) ; 

__attribute__((used)) static int FUNC3(struct fc_lport *lport,
			      struct fc_rport_priv *rdata)
{
	struct fc_frame *fp;

	fp = FUNC0(lport, sizeof(struct fc_ct_hdr) +
			    sizeof(struct fc_ns_fid));
	if (!fp)
		return -ENOMEM;
	if (!lport->tt.elsct_send(lport, rdata->ids.port_id, fp, FC_NS_GPN_ID,
				  fc_disc_gpn_id_resp, rdata,
				  3 * lport->r_a_tov))
		return -ENOMEM;
	FUNC1(&rdata->kref);
	return 0;
}