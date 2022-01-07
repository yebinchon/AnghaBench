
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int* vec; } ;
struct TYPE_4__ {TYPE_1__ aprox_match; } ;
struct bnx2x_mcast_obj {int (* set_registry_size ) (struct bnx2x_mcast_obj*,int) ;TYPE_2__ registry; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MCAST_VEC_SZ ;
 int stub1 (struct bnx2x_mcast_obj*,int) ;

__attribute__((used)) static inline int bnx2x_mcast_refresh_registry_e2(struct bnx2x *bp,
        struct bnx2x_mcast_obj *o)
{
 int i, cnt = 0;
 u64 elem;

 for (i = 0; i < BNX2X_MCAST_VEC_SZ; i++) {
  elem = o->registry.aprox_match.vec[i];
  for (; elem; cnt++)
   elem &= elem - 1;
 }

 o->set_registry_size(o, cnt);

 return 0;
}
