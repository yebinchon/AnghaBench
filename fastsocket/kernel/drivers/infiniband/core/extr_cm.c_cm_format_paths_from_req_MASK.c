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
struct ib_sa_path_rec {int reversible; scalar_t__ packet_life_time; void* packet_life_time_selector; int /*<<< orphan*/  rate; void* rate_selector; void* mtu; void* mtu_selector; int /*<<< orphan*/  sl; int /*<<< orphan*/  pkey; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  slid; scalar_t__ dlid; int /*<<< orphan*/  sgid; int /*<<< orphan*/  dgid; } ;
struct cm_req_msg {int /*<<< orphan*/  pkey; int /*<<< orphan*/  alt_traffic_class; int /*<<< orphan*/  alt_hop_limit; int /*<<< orphan*/  alt_remote_lid; scalar_t__ alt_local_lid; int /*<<< orphan*/  alt_remote_gid; int /*<<< orphan*/  alt_local_gid; int /*<<< orphan*/  primary_traffic_class; int /*<<< orphan*/  primary_hop_limit; int /*<<< orphan*/  primary_remote_lid; scalar_t__ primary_local_lid; int /*<<< orphan*/  primary_remote_gid; int /*<<< orphan*/  primary_local_gid; } ;

/* Variables and functions */
 void* IB_SA_EQ ; 
 int /*<<< orphan*/  FUNC0 (struct cm_req_msg*) ; 
 scalar_t__ FUNC1 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_req_msg*) ; 
 void* FUNC4 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct cm_req_msg*) ; 
 scalar_t__ FUNC6 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_sa_path_rec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct cm_req_msg *req_msg,
					    struct ib_sa_path_rec *primary_path,
					    struct ib_sa_path_rec *alt_path)
{
	FUNC9(primary_path, 0, sizeof *primary_path);
	primary_path->dgid = req_msg->primary_local_gid;
	primary_path->sgid = req_msg->primary_remote_gid;
	primary_path->dlid = req_msg->primary_local_lid;
	primary_path->slid = req_msg->primary_remote_lid;
	primary_path->flow_label = FUNC5(req_msg);
	primary_path->hop_limit = req_msg->primary_hop_limit;
	primary_path->traffic_class = req_msg->primary_traffic_class;
	primary_path->reversible = 1;
	primary_path->pkey = req_msg->pkey;
	primary_path->sl = FUNC8(req_msg);
	primary_path->mtu_selector = IB_SA_EQ;
	primary_path->mtu = FUNC4(req_msg);
	primary_path->rate_selector = IB_SA_EQ;
	primary_path->rate = FUNC7(req_msg);
	primary_path->packet_life_time_selector = IB_SA_EQ;
	primary_path->packet_life_time =
		FUNC6(req_msg);
	primary_path->packet_life_time -= (primary_path->packet_life_time > 0);

	if (req_msg->alt_local_lid) {
		FUNC9(alt_path, 0, sizeof *alt_path);
		alt_path->dgid = req_msg->alt_local_gid;
		alt_path->sgid = req_msg->alt_remote_gid;
		alt_path->dlid = req_msg->alt_local_lid;
		alt_path->slid = req_msg->alt_remote_lid;
		alt_path->flow_label = FUNC0(req_msg);
		alt_path->hop_limit = req_msg->alt_hop_limit;
		alt_path->traffic_class = req_msg->alt_traffic_class;
		alt_path->reversible = 1;
		alt_path->pkey = req_msg->pkey;
		alt_path->sl = FUNC3(req_msg);
		alt_path->mtu_selector = IB_SA_EQ;
		alt_path->mtu = FUNC4(req_msg);
		alt_path->rate_selector = IB_SA_EQ;
		alt_path->rate = FUNC2(req_msg);
		alt_path->packet_life_time_selector = IB_SA_EQ;
		alt_path->packet_life_time =
			FUNC1(req_msg);
		alt_path->packet_life_time -= (alt_path->packet_life_time > 0);
	}
}