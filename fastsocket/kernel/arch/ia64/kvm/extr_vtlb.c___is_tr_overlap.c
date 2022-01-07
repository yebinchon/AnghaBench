
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct thash_data {scalar_t__ rid; scalar_t__ vadr; int ps; int p; } ;


 scalar_t__ PSIZE (int ) ;

__attribute__((used)) static int __is_tr_overlap(struct thash_data *trp, u64 rid, u64 sva, u64 eva)
{
 u64 sa1, ea1;

 if (!trp->p || trp->rid != rid)
  return 0;

 sa1 = trp->vadr;
 ea1 = sa1 + PSIZE(trp->ps) - 1;
 eva -= 1;
 if ((sva > ea1) || (sa1 > eva))
  return 0;
 else
  return 1;

}
