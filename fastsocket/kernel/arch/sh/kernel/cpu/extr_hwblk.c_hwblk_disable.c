
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwblk_info {struct hwblk* hwblks; } ;
struct hwblk {int bit; int mstp; } ;


 int HWBLK_CNT_USAGE ;
 int __hwblk_mod_cnt (struct hwblk_info*,int,int ,int,int ) ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int hwblk_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void hwblk_disable(struct hwblk_info *info, int hwblk)
{
 struct hwblk *hp = info->hwblks + hwblk;
 unsigned long tmp;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&hwblk_lock, flags);

 ret = __hwblk_mod_cnt(info, hwblk, HWBLK_CNT_USAGE, -1, 0);
 if (ret == 0) {
  tmp = __raw_readl(hp->mstp);
  tmp |= 1 << hp->bit;
  __raw_writel(tmp, hp->mstp);
 }

 spin_unlock_irqrestore(&hwblk_lock, flags);
}
