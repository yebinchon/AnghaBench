
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vec; } ;
struct TYPE_4__ {TYPE_1__ aprox_match; } ;
struct bnx2x_mcast_obj {TYPE_2__ registry; } ;


 int BIT_VEC64_CLEAR_BIT (int ,int) ;
 int bnx2x_mcast_get_next_bin (struct bnx2x_mcast_obj*,int ) ;

__attribute__((used)) static inline int bnx2x_mcast_clear_first_bin(struct bnx2x_mcast_obj *o)
{
 int cur_bit = bnx2x_mcast_get_next_bin(o, 0);

 if (cur_bit >= 0)
  BIT_VEC64_CLEAR_BIT(o->registry.aprox_match.vec, cur_bit);

 return cur_bit;
}
