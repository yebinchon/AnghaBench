#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  reserved; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  dgid; } ;
struct ib_uverbs_ah_attr {int is_global; scalar_t__ reserved; int /*<<< orphan*/  port_num; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  src_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  dlid; TYPE_3__ grh; } ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_5__ {int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  flow_label; TYPE_1__ dgid; } ;
struct ib_ah_attr {int ah_flags; int /*<<< orphan*/  port_num; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  src_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  dlid; TYPE_2__ grh; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct ib_uverbs_ah_attr *dst,
			     struct ib_ah_attr *src)
{
	FUNC0(dst->grh.dgid, src->grh.dgid.raw, sizeof src->grh.dgid);
	dst->grh.flow_label        = src->grh.flow_label;
	dst->grh.sgid_index        = src->grh.sgid_index;
	dst->grh.hop_limit         = src->grh.hop_limit;
	dst->grh.traffic_class     = src->grh.traffic_class;
	FUNC1(&dst->grh.reserved, 0, sizeof(dst->grh.reserved));
	dst->dlid 	    	   = src->dlid;
	dst->sl   	    	   = src->sl;
	dst->src_path_bits 	   = src->src_path_bits;
	dst->static_rate   	   = src->static_rate;
	dst->is_global             = src->ah_flags & IB_AH_GRH ? 1 : 0;
	dst->port_num 	    	   = src->port_num;
	dst->reserved 		   = 0;
}