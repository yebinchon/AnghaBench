
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct mlx4_resource_tracker {TYPE_1__* slave_list; } ;
struct TYPE_5__ {struct mlx4_resource_tracker res_tracker; } ;
struct TYPE_6__ {TYPE_2__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
struct mac_res {int list; scalar_t__ port; int mac; } ;
struct TYPE_4__ {int * res_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t RES_MAC ;
 struct mac_res* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static int mac_add_to_slave(struct mlx4_dev *dev, int slave, u64 mac, int port)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_resource_tracker *tracker = &priv->mfunc.master.res_tracker;
 struct mac_res *res;

 res = kzalloc(sizeof *res, GFP_KERNEL);
 if (!res)
  return -ENOMEM;
 res->mac = mac;
 res->port = (u8) port;
 list_add_tail(&res->list,
        &tracker->slave_list[slave].res_list[RES_MAC]);
 return 0;
}
