
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b44 {int dummy; } ;


 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int B44_FLAG_RX_PAUSE ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_CAP ;
 int __b44_set_flow_ctrl (struct b44*,int) ;

__attribute__((used)) static void b44_set_flow_ctrl(struct b44 *bp, u32 local, u32 remote)
{
 u32 pause_enab = 0;






 if ((local & ADVERTISE_PAUSE_CAP) &&
     (local & ADVERTISE_PAUSE_ASYM)){
  if ((remote & LPA_PAUSE_ASYM) &&
      !(remote & LPA_PAUSE_CAP))
   pause_enab |= B44_FLAG_RX_PAUSE;
 }

 __b44_set_flow_ctrl(bp, pause_enab);
}
