
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_exch {int ex_refcnt; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void fc_exch_hold(struct fc_exch *ep)
{
 atomic_inc(&ep->ex_refcnt);
}
