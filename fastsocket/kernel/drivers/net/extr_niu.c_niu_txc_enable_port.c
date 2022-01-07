
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int port; } ;


 int TXC_CONTROL ;
 int TXC_CONTROL_ENABLE ;
 int niu_lock_parent (struct niu*,unsigned long) ;
 int niu_unlock_parent (struct niu*,unsigned long) ;
 int nr64 (int ) ;
 int nw64 (int ,int) ;

__attribute__((used)) static void niu_txc_enable_port(struct niu *np, int on)
{
 unsigned long flags;
 u64 val, mask;

 niu_lock_parent(np, flags);
 val = nr64(TXC_CONTROL);
 mask = (u64)1 << np->port;
 if (on) {
  val |= TXC_CONTROL_ENABLE | mask;
 } else {
  val &= ~mask;
  if ((val & ~TXC_CONTROL_ENABLE) == 0)
   val &= ~TXC_CONTROL_ENABLE;
 }
 nw64(TXC_CONTROL, val);
 niu_unlock_parent(np, flags);
}
