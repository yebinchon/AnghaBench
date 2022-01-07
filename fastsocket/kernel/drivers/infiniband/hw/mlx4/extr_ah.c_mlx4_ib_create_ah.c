
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_ah {int dummy; } ;
struct ib_pd {int device; } ;
struct ib_ah_attr {int ah_flags; int port_num; } ;
struct ib_ah {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_ah* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int IB_AH_GRH ;
 scalar_t__ IB_LINK_LAYER_ETHERNET ;
 scalar_t__ IS_ERR (struct ib_ah*) ;
 struct ib_ah* create_ib_ah (struct ib_pd*,struct ib_ah_attr*,struct mlx4_ib_ah*) ;
 struct ib_ah* create_iboe_ah (struct ib_pd*,struct ib_ah_attr*,struct mlx4_ib_ah*) ;
 int kfree (struct mlx4_ib_ah*) ;
 struct mlx4_ib_ah* kzalloc (int,int ) ;
 scalar_t__ rdma_port_get_link_layer (int ,int ) ;

struct ib_ah *mlx4_ib_create_ah(struct ib_pd *pd, struct ib_ah_attr *ah_attr)
{
 struct mlx4_ib_ah *ah;
 struct ib_ah *ret;

 ah = kzalloc(sizeof *ah, GFP_ATOMIC);
 if (!ah)
  return ERR_PTR(-ENOMEM);

 if (rdma_port_get_link_layer(pd->device, ah_attr->port_num) == IB_LINK_LAYER_ETHERNET) {
  if (!(ah_attr->ah_flags & IB_AH_GRH)) {
   ret = ERR_PTR(-EINVAL);
  } else {
   ret = create_iboe_ah(pd, ah_attr, ah);
  }

  if (IS_ERR(ret))
   kfree(ah);

  return ret;
 } else
  return create_ib_ah(pd, ah_attr, ah);
}
