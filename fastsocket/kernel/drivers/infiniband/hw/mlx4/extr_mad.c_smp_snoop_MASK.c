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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  void* u16 ;
struct TYPE_6__ {int /*<<< orphan*/  is_going_down; } ;
struct TYPE_5__ {void*** phys_pkey_cache; } ;
struct mlx4_ib_dev {TYPE_3__ sriov; int /*<<< orphan*/  dev; TYPE_2__ pkeys; } ;
struct ib_smp {int /*<<< orphan*/ * data; int /*<<< orphan*/  attr_mod; } ;
struct ib_port_info {int neighbormtu_mastersmsl; int clientrereg_resv_subnetto; int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  lid; } ;
struct TYPE_4__ {scalar_t__ mgmt_class; scalar_t__ method; int attr_id; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_GID_CHANGE ; 
 int /*<<< orphan*/  IB_EVENT_PKEY_CHANGE ; 
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ; 
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ; 
 scalar_t__ IB_MGMT_METHOD_SET ; 
#define  IB_SMP_ATTR_GUID_INFO 130 
#define  IB_SMP_ATTR_PKEY_TABLE 129 
#define  IB_SMP_ATTR_PORT_INFO 128 
 int /*<<< orphan*/  FUNC0 (struct mlx4_ib_dev*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_ib_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_ib_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_ib_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int,...) ; 
 struct mlx4_ib_dev* FUNC11 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_ib_dev*,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static void FUNC13(struct ib_device *ibdev, u8 port_num, struct ib_mad *mad,
		      u16 prev_lid)
{
	struct ib_port_info *pinfo;
	u16 lid;
	__be16 *base;
	u32 bn, pkey_change_bitmap;
	int i;


	struct mlx4_ib_dev *dev = FUNC11(ibdev);
	if ((mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED ||
	     mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) &&
	    mad->mad_hdr.method == IB_MGMT_METHOD_SET)
		switch (mad->mad_hdr.attr_id) {
		case IB_SMP_ATTR_PORT_INFO:
			pinfo = (struct ib_port_info *) ((struct ib_smp *) mad)->data;
			lid = FUNC1(pinfo->lid);

			FUNC12(dev, port_num,
				     FUNC1(pinfo->sm_lid),
				     pinfo->neighbormtu_mastersmsl & 0xf);

			if (pinfo->clientrereg_resv_subnetto & 0x80)
				FUNC3(dev, port_num);

			if (prev_lid != lid)
				FUNC4(dev, port_num);
			break;

		case IB_SMP_ATTR_PKEY_TABLE:
			if (!FUNC9(dev->dev)) {
				FUNC5(dev, port_num,
						       IB_EVENT_PKEY_CHANGE);
				break;
			}

			/* at this point, we are running in the master.
			 * Slaves do not receive SMPs.
			 */
			bn  = FUNC2(((struct ib_smp *)mad)->attr_mod) & 0xFFFF;
			base = (__be16 *) &(((struct ib_smp *)mad)->data[0]);
			pkey_change_bitmap = 0;
			for (i = 0; i < 32; i++) {
				FUNC10("PKEY[%d] = x%x\n",
					 i + bn*32, FUNC1(base[i]));
				if (FUNC1(base[i]) !=
				    dev->pkeys.phys_pkey_cache[port_num - 1][i + bn*32]) {
					pkey_change_bitmap |= (1 << i);
					dev->pkeys.phys_pkey_cache[port_num - 1][i + bn*32] =
						FUNC1(base[i]);
				}
			}
			FUNC10("PKEY Change event: port=%d, "
				 "block=0x%x, change_bitmap=0x%x\n",
				 port_num, bn, pkey_change_bitmap);

			if (pkey_change_bitmap) {
				FUNC5(dev, port_num,
						       IB_EVENT_PKEY_CHANGE);
				if (!dev->sriov.is_going_down)
					FUNC0(dev, port_num, bn,
							    pkey_change_bitmap);
			}
			break;

		case IB_SMP_ATTR_GUID_INFO:
			/* paravirtualized master's guid is guid 0 -- does not change */
			if (!FUNC8(dev->dev))
				FUNC5(dev, port_num,
						       IB_EVENT_GID_CHANGE);
			/*if master, notify relevant slaves*/
			if (FUNC8(dev->dev) &&
			    !dev->sriov.is_going_down) {
				bn = FUNC2(((struct ib_smp *)mad)->attr_mod);
				FUNC7(dev, bn, port_num,
								    (u8 *)(&((struct ib_smp *)mad)->data));
				FUNC6(dev, bn, port_num,
								     (u8 *)(&((struct ib_smp *)mad)->data));
			}
			break;

		default:
			break;
		}
}