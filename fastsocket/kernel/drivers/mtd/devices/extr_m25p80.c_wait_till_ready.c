
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m25p {int dummy; } ;


 unsigned long MAX_READY_WAIT_JIFFIES ;
 int SR_WIP ;
 int cond_resched () ;
 unsigned long jiffies ;
 int read_sr (struct m25p*) ;
 int time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int wait_till_ready(struct m25p *flash)
{
 unsigned long deadline;
 int sr;

 deadline = jiffies + MAX_READY_WAIT_JIFFIES;

 do {
  if ((sr = read_sr(flash)) < 0)
   break;
  else if (!(sr & SR_WIP))
   return 0;

  cond_resched();

 } while (!time_after_eq(jiffies, deadline));

 return 1;
}
