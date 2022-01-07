
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stliport {scalar_t__ rc; int state; int raw_wait; } ;
struct stlibrd {int dummy; } ;


 int EIO ;
 int ERESTARTSYS ;
 int ST_CMDING ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 int stli_sendcmd (struct stlibrd*,struct stliport*,unsigned long,void*,int,int) ;
 int test_bit (int ,int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int stli_cmdwait(struct stlibrd *brdp, struct stliport *portp, unsigned long cmd, void *arg, int size, int copyback)
{
 wait_event_interruptible(portp->raw_wait,
   !test_bit(ST_CMDING, &portp->state));
 if (signal_pending(current))
  return -ERESTARTSYS;

 stli_sendcmd(brdp, portp, cmd, arg, size, copyback);

 wait_event_interruptible(portp->raw_wait,
   !test_bit(ST_CMDING, &portp->state));
 if (signal_pending(current))
  return -ERESTARTSYS;

 if (portp->rc != 0)
  return -EIO;
 return 0;
}
