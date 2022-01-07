
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwblk_info {int dummy; } ;


 int __hwblk_mod_cnt (struct hwblk_info*,int,int,int,int) ;
 int hwblk_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hwblk_mod_cnt(struct hwblk_info *info, int hwblk,
     int counter, int value, int goal)
{
 unsigned long flags;

 spin_lock_irqsave(&hwblk_lock, flags);
 __hwblk_mod_cnt(info, hwblk, counter, value, goal);
 spin_unlock_irqrestore(&hwblk_lock, flags);
}
