
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {scalar_t__ mmio; int dd_flag; } ;


 scalar_t__ HOST_CTL ;
 int HOST_RESET ;
 int MTIP_DDF_REMOVE_PENDING_BIT ;
 unsigned long jiffies ;
 int mdelay (int) ;
 unsigned long msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtip_hba_reset(struct driver_data *dd)
{
 unsigned long timeout;


 writel(HOST_RESET, dd->mmio + HOST_CTL);


 readl(dd->mmio + HOST_CTL);


 timeout = jiffies + msecs_to_jiffies(2000);
 do {
  mdelay(10);
  if (test_bit(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag))
   return -1;

 } while ((readl(dd->mmio + HOST_CTL) & HOST_RESET)
   && time_before(jiffies, timeout));

 if (readl(dd->mmio + HOST_CTL) & HOST_RESET)
  return -1;

 return 0;
}
