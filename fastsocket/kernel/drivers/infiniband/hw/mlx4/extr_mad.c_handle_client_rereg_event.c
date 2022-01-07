
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * demux; int is_going_down; } ;
struct mlx4_ib_dev {int dev; TYPE_1__ sriov; } ;


 int IB_EVENT_CLIENT_REREGISTER ;
 int MLX4_EQ_PORT_INFO_CLIENT_REREG_MASK ;
 int mlx4_gen_slaves_port_mgt_ev (int ,int,int ) ;
 int mlx4_ib_dispatch_event (struct mlx4_ib_dev*,int,int ) ;
 int mlx4_ib_invalidate_all_guid_record (struct mlx4_ib_dev*,int) ;
 int mlx4_ib_mcg_port_cleanup (int *,int ) ;
 scalar_t__ mlx4_is_master (int ) ;

__attribute__((used)) static void handle_client_rereg_event(struct mlx4_ib_dev *dev, u8 port_num)
{

 if (mlx4_is_master(dev->dev)) {
  mlx4_ib_invalidate_all_guid_record(dev, port_num);

  if (!dev->sriov.is_going_down) {
   mlx4_ib_mcg_port_cleanup(&dev->sriov.demux[port_num - 1], 0);
   mlx4_gen_slaves_port_mgt_ev(dev->dev, port_num,
          MLX4_EQ_PORT_INFO_CLIENT_REREG_MASK);
  }
 }
 mlx4_ib_dispatch_event(dev, port_num, IB_EVENT_CLIENT_REREGISTER);
}
