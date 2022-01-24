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
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct fchs_s {int dummy; } ;
struct fcgs_rftid_req_s {int dap; int /*<<< orphan*/ * fc4_type; } ;
struct ct_hdr_s {int dummy; } ;
typedef  enum bfa_lport_role { ____Placeholder_bfa_lport_role } bfa_lport_role ;

/* Variables and functions */
 int /*<<< orphan*/  FC_NAME_SERVER ; 
 int FC_TYPE_FCP ; 
 int /*<<< orphan*/  GS_RFT_ID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ct_hdr_s*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fchs_s*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fcgs_rftid_req_s*,int /*<<< orphan*/ ,int) ; 

u16
FUNC5(struct fchs_s *fchs, void *pyld, u32 s_id, u16 ox_id,
	       enum bfa_lport_role roles)
{
	struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
	struct fcgs_rftid_req_s *rftid = (struct fcgs_rftid_req_s *)(cthdr + 1);
	u32        type_value, d_id = FUNC0(FC_NAME_SERVER);
	u8         index;

	FUNC3(fchs, d_id, s_id, ox_id);
	FUNC2(cthdr, s_id, GS_RFT_ID);

	FUNC4(rftid, 0, sizeof(struct fcgs_rftid_req_s));

	rftid->dap = s_id;

	/* By default, FCP FC4 Type is registered */
	index = FC_TYPE_FCP >> 5;
	type_value = 1 << (FC_TYPE_FCP % 32);
	rftid->fc4_type[index] = FUNC1(type_value);

	return sizeof(struct fcgs_rftid_req_s) + sizeof(struct ct_hdr_s);
}