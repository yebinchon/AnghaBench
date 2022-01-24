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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct fchs_s {int dummy; } ;
struct fcgs_rsnn_nn_req_s {scalar_t__ snn_len; scalar_t__ snn; int /*<<< orphan*/  node_name; } ;
struct ct_hdr_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_NAME_SERVER ; 
 int /*<<< orphan*/  GS_RSNN_NN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ct_hdr_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fcgs_rsnn_nn_req_s*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 

u16
FUNC6(struct fchs_s *fchs, void *pyld, u32 s_id,
			wwn_t node_name, u8 *name)
{
	struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
	struct fcgs_rsnn_nn_req_s *rsnn_nn =
		(struct fcgs_rsnn_nn_req_s *) (cthdr + 1);
	u32	d_id = FUNC0(FC_NAME_SERVER);

	FUNC2(fchs, d_id, s_id, 0);
	FUNC1(cthdr, s_id, GS_RSNN_NN);

	FUNC3(rsnn_nn, 0, sizeof(struct fcgs_rsnn_nn_req_s));

	rsnn_nn->node_name = node_name;
	rsnn_nn->snn_len = (u8) FUNC4((char *)name);
	FUNC5((char *)rsnn_nn->snn, (char *)name, rsnn_nn->snn_len);

	return sizeof(struct fcgs_rsnn_nn_req_s) + sizeof(struct ct_hdr_s);
}