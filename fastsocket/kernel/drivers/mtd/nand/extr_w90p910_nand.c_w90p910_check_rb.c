
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_nand {int lock; } ;


 unsigned int READYBUSY ;
 int REG_SMISR ;
 unsigned int __raw_readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int w90p910_check_rb(struct w90p910_nand *nand)
{
 unsigned int val;
 spin_lock(&nand->lock);
 val = __raw_readl(REG_SMISR);
 val &= READYBUSY;
 spin_unlock(&nand->lock);

 return val;
}
