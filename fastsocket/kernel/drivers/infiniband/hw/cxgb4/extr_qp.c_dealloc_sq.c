
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_sq {int dummy; } ;
struct c4iw_rdev {int dummy; } ;


 int dealloc_host_sq (struct c4iw_rdev*,struct t4_sq*) ;
 int dealloc_oc_sq (struct c4iw_rdev*,struct t4_sq*) ;
 scalar_t__ t4_sq_onchip (struct t4_sq*) ;

__attribute__((used)) static void dealloc_sq(struct c4iw_rdev *rdev, struct t4_sq *sq)
{
 if (t4_sq_onchip(sq))
  dealloc_oc_sq(rdev, sq);
 else
  dealloc_host_sq(rdev, sq);
}
