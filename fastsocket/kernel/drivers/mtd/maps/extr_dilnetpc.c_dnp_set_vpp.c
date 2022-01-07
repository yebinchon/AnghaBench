
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;


 int BUG_ON (int) ;
 int CSC_RBWR ;
 int dnpc_spin ;
 int getcsc (int ) ;
 int setcsc (int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vpp_counter ;

__attribute__((used)) static void dnp_set_vpp(struct map_info *not_used, int on)
{
 spin_lock_irq(&dnpc_spin);

 if (on)
 {
  if(++vpp_counter == 1)
   setcsc(CSC_RBWR, getcsc(CSC_RBWR) & ~0x4);
 }
 else
 {
  if(--vpp_counter == 0)
   setcsc(CSC_RBWR, getcsc(CSC_RBWR) | 0x4);
  else
   BUG_ON(vpp_counter < 0);
 }
 spin_unlock_irq(&dnpc_spin);
}
