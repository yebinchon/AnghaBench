
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dscc4_dev_priv {int iqtx_current; int flags; int* iqtx; } ;
typedef scalar_t__ s8 ;


 int EAGAIN ;
 int IRQ_RING_SIZE ;
 int NeedIDR ;
 int NeedIDT ;
 int Xpr ;
 int cpu_to_le32 (int ) ;
 int schedule_timeout_uninterruptible (int) ;
 int smp_rmb () ;

__attribute__((used)) static inline int dscc4_xpr_ack(struct dscc4_dev_priv *dpriv)
{
 int cur = dpriv->iqtx_current%IRQ_RING_SIZE;
 s8 i = 0;

 do {
  if (!(dpriv->flags & (NeedIDR | NeedIDT)) ||
      (dpriv->iqtx[cur] & cpu_to_le32(Xpr)))
   break;
  smp_rmb();
  schedule_timeout_uninterruptible(10);
 } while (++i > 0);

 return (i >= 0 ) ? i : -EAGAIN;
}
