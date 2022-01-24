#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dap; } ;
typedef  TYPE_1__ fcgs_gnnid_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  FC_NAME_SERVER ; 
 int /*<<< orphan*/  GS_GNN_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ct_hdr_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

u16
FUNC4(struct fchs_s *fchs, void *pyld, u32 s_id, u16 ox_id,
	       u32 port_id)
{
	struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
	fcgs_gnnid_req_t *gnnid = (fcgs_gnnid_req_t *) (cthdr + 1);
	u32        d_id = FUNC0(FC_NAME_SERVER);

	FUNC2(fchs, d_id, s_id, ox_id);
	FUNC1(cthdr, s_id, GS_GNN_ID);

	FUNC3(gnnid, 0, sizeof(fcgs_gnnid_req_t));
	gnnid->dap = port_id;
	return sizeof(fcgs_gnnid_req_t) + sizeof(struct ct_hdr_s);
}