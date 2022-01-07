
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct device {int dummy; } ;


 unsigned long AT91_RTC_ACKUPD ;
 int AT91_RTC_IMR ;
 unsigned long AT91_RTC_SECEV ;
 unsigned long at91_sys_read (int ) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int at91_rtc_proc(struct device *dev, struct seq_file *seq)
{
 unsigned long imr = at91_sys_read(AT91_RTC_IMR);

 seq_printf(seq, "update_IRQ\t: %s\n",
   (imr & AT91_RTC_ACKUPD) ? "yes" : "no");
 seq_printf(seq, "periodic_IRQ\t: %s\n",
   (imr & AT91_RTC_SECEV) ? "yes" : "no");

 return 0;
}
