
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int changed_attr; } ;
struct TYPE_6__ {TYPE_1__ port_info; } ;
struct TYPE_7__ {TYPE_2__ params; int port; } ;
struct TYPE_8__ {TYPE_3__ port_mgmt_change; } ;
struct mlx4_eqe {TYPE_4__ event; int subtype; int type; } ;
struct mlx4_dev {int dummy; } ;


 int ALL_SLAVES ;
 int MLX4_DEV_PMC_SUBTYPE_PORT_INFO ;
 int MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT ;
 int cpu_to_be32 (int ) ;
 int memset (struct mlx4_eqe*,int ,int) ;
 int slave_event (struct mlx4_dev*,int ,struct mlx4_eqe*) ;

int mlx4_gen_slaves_port_mgt_ev(struct mlx4_dev *dev, u8 port, int attr)
{
 struct mlx4_eqe eqe;

 memset(&eqe, 0, sizeof eqe);

 eqe.type = MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT;
 eqe.subtype = MLX4_DEV_PMC_SUBTYPE_PORT_INFO;
 eqe.event.port_mgmt_change.port = port;
 eqe.event.port_mgmt_change.params.port_info.changed_attr =
  cpu_to_be32((u32) attr);

 slave_event(dev, ALL_SLAVES, &eqe);
 return 0;
}
