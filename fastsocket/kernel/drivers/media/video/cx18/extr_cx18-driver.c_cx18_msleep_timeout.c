
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int current ;
 long msecs_to_jiffies (unsigned int) ;
 long schedule_timeout (long) ;
 int set_current_state (int ) ;
 int signal_pending (int ) ;

int cx18_msleep_timeout(unsigned int msecs, int intr)
{
 long int timeout = msecs_to_jiffies(msecs);
 int sig;

 do {
  set_current_state(intr ? TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
  timeout = schedule_timeout(timeout);
  sig = intr ? signal_pending(current) : 0;
 } while (!sig && timeout);
 return sig;
}
