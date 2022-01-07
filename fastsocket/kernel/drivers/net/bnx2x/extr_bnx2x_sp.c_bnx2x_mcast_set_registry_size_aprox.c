
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_bins_set; } ;
struct TYPE_4__ {TYPE_1__ aprox_match; } ;
struct bnx2x_mcast_obj {TYPE_2__ registry; } ;



__attribute__((used)) static void bnx2x_mcast_set_registry_size_aprox(struct bnx2x_mcast_obj *o,
      int n)
{
 o->registry.aprox_match.num_bins_set = n;
}
