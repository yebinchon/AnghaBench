
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int ETIMEDOUT ;
 int NCR5380_local_declare () ;
 int NCR5380_read (int) ;
 int NCR5380_setup (struct Scsi_Host*) ;
 int cond_resched () ;
 int cpu_relax () ;
 int in_interrupt () ;
 int jiffies ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int NCR5380_poll_politely(struct Scsi_Host *instance, int reg, int bit, int val, int t)
{
 NCR5380_local_declare();
 int n = 500;
 unsigned long end = jiffies + t;
 int r;

 NCR5380_setup(instance);

 while( n-- > 0)
 {
  r = NCR5380_read(reg);
  if((r & bit) == val)
   return 0;
  cpu_relax();
 }


 while(time_before(jiffies, end))
 {
  r = NCR5380_read(reg);
  if((r & bit) == val)
   return 0;
  if(!in_interrupt())
   cond_resched();
  else
   cpu_relax();
 }
 return -ETIMEDOUT;
}
