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
typedef  int /*<<< orphan*/  wwn_t ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct fchs_s {int dummy; } ;
struct fcgs_gidpn_req_s {int /*<<< orphan*/  port_name; } ;
struct ct_hdr_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_NAME_SERVER ; 
 int /*<<< orphan*/  GS_GID_PN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ct_hdr_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fcgs_gidpn_req_s*,int /*<<< orphan*/ ,int) ; 

u16
FUNC4(struct fchs_s *fchs, void *pyld, u32 s_id, u16 ox_id,
	       wwn_t port_name)
{
	struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
	struct fcgs_gidpn_req_s *gidpn = (struct fcgs_gidpn_req_s *)(cthdr + 1);
	u32        d_id = FUNC0(FC_NAME_SERVER);

	FUNC2(fchs, d_id, s_id, ox_id);
	FUNC1(cthdr, s_id, GS_GID_PN);

	FUNC3(gidpn, 0, sizeof(struct fcgs_gidpn_req_s));
	gidpn->port_name = port_name;
	return sizeof(struct fcgs_gidpn_req_s) + sizeof(struct ct_hdr_s);
}