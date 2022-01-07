
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;

 int __mlx4_unregister_mac (struct mlx4_dev*,int,int ) ;
 int get_param_l (int *) ;
 int mac_del_from_slave (struct mlx4_dev*,int,int ,int) ;

__attribute__((used)) static int mac_free_res(struct mlx4_dev *dev, int slave, int op, int cmd,
       u64 in_param, u64 *out_param)
{
 int port;
 int err = 0;

 switch (op) {
 case 128:
  port = get_param_l(out_param);
  mac_del_from_slave(dev, slave, in_param, port);
  __mlx4_unregister_mac(dev, port, in_param);
  break;
 default:
  err = -EINVAL;
  break;
 }

 return err;

}
