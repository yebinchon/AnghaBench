
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct TYPE_2__ {union ib_gid** gid_table; } ;
struct mlx4_ib_dev {TYPE_1__ iboe; } ;
struct ib_device {int dummy; } ;


 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int iboe_query_gid(struct ib_device *ibdev, u8 port, int index,
     union ib_gid *gid)
{
 struct mlx4_ib_dev *dev = to_mdev(ibdev);

 *gid = dev->iboe.gid_table[port - 1][index];

 return 0;
}
