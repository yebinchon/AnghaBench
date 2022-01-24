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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct fcoe_rport {int /*<<< orphan*/  enode_mac; } ;
struct fcoe_ctlr {struct fc_lport* lp; } ;
struct fc_rport_priv {int dummy; } ;
struct TYPE_2__ {struct fc_rport_priv* (* rport_lookup ) (struct fc_lport*,int /*<<< orphan*/ ) ;} ;
struct fc_lport {TYPE_1__ tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 struct fcoe_rport* FUNC0 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct fc_rport_priv* FUNC4 (struct fc_lport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct fcoe_ctlr *fip, u32 port_id, u8 *mac)
{
	struct fc_lport *lport = fip->lp;
	struct fc_rport_priv *rdata;
	struct fcoe_rport *frport;
	int ret = -1;

	FUNC2();
	rdata = lport->tt.rport_lookup(lport, port_id);
	if (rdata) {
		frport = FUNC0(rdata);
		FUNC1(mac, frport->enode_mac, ETH_ALEN);
		ret = 0;
	}
	FUNC3();
	return ret;
}