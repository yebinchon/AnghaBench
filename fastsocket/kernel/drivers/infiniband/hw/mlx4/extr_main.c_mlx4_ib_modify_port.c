
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ib_port_modify {int set_port_cap_mask; int clr_port_cap_mask; } ;
struct ib_port_attr {int port_cap_flags; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int cap_mask_mutex; } ;


 int IB_PORT_RESET_QKEY_CNTR ;
 int mlx4_SET_PORT (TYPE_1__*,int ,int,int) ;
 int mlx4_ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx4_ib_modify_port(struct ib_device *ibdev, u8 port, int mask,
          struct ib_port_modify *props)
{
 struct ib_port_attr attr;
 u32 cap_mask;
 int err;

 mutex_lock(&to_mdev(ibdev)->cap_mask_mutex);

 err = mlx4_ib_query_port(ibdev, port, &attr);
 if (err)
  goto out;

 cap_mask = (attr.port_cap_flags | props->set_port_cap_mask) &
  ~props->clr_port_cap_mask;

 err = mlx4_SET_PORT(to_mdev(ibdev), port,
       !!(mask & IB_PORT_RESET_QKEY_CNTR),
       cap_mask);

out:
 mutex_unlock(&to_mdev(ibdev)->cap_mask_mutex);
 return err;
}
