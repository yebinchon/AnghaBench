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
struct fc_rnid_general_topology_data_s {void* num_attached_nodes; scalar_t__ phy_port_num; void* asso_type; } ;
struct bfa_fcs_lport_s {int dummy; } ;

/* Variables and functions */
 int RNID_ASSOCIATED_TYPE_HOST ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_rnid_general_topology_data_s*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct bfa_fcs_lport_s *port,
			struct fc_rnid_general_topology_data_s *gen_topo_data)
{
	FUNC1(gen_topo_data, 0,
		      sizeof(struct fc_rnid_general_topology_data_s));

	gen_topo_data->asso_type = FUNC0(RNID_ASSOCIATED_TYPE_HOST);
	gen_topo_data->phy_port_num = 0;	/* @todo */
	gen_topo_data->num_attached_nodes = FUNC0(1);
}