
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int dummy; } ;


 int pch_gbe_down (struct pch_gbe_adapter*) ;
 int pch_gbe_up (struct pch_gbe_adapter*) ;

void pch_gbe_reinit_locked(struct pch_gbe_adapter *adapter)
{
 pch_gbe_down(adapter);
 pch_gbe_up(adapter);
}
