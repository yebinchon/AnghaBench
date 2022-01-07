
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDROM_ALTSTATUS_REG ;
 unsigned long GDROM_DEFAULT_TIMEOUT ;
 int cpu_relax () ;
 int ctrl_inb (int ) ;
 unsigned long jiffies ;
 int time_before (unsigned long,unsigned long) ;

__attribute__((used)) static bool gdrom_wait_clrbusy(void)
{
 unsigned long timeout = jiffies + GDROM_DEFAULT_TIMEOUT;
 while ((ctrl_inb(GDROM_ALTSTATUS_REG) & 0x80) &&
  (time_before(jiffies, timeout)))
  cpu_relax();
 return time_before(jiffies, timeout + 1);
}
