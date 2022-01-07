
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resource_allocation_enable_RW; int resource_allocation_groupID_RW; } ;
struct spu_state {TYPE_1__ priv1; } ;
struct spu {int dummy; } ;


 int spu_resource_allocation_enable_get (struct spu*) ;
 int spu_resource_allocation_groupID_get (struct spu*) ;

__attribute__((used)) static inline void save_mfc_rag(struct spu_state *csa, struct spu *spu)
{




 csa->priv1.resource_allocation_groupID_RW =
  spu_resource_allocation_groupID_get(spu);
 csa->priv1.resource_allocation_enable_RW =
  spu_resource_allocation_enable_get(spu);
}
