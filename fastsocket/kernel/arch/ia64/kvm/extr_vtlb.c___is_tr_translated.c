
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct thash_data {scalar_t__ rid; scalar_t__ vadr; int ps; scalar_t__ p; } ;


 scalar_t__ PSIZE (int ) ;

__attribute__((used)) static int __is_tr_translated(struct thash_data *trp, u64 rid, u64 va)
{
 return ((trp->p) && (trp->rid == rid)
    && ((va-trp->vadr) < PSIZE(trp->ps)));
}
