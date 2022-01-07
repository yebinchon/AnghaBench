
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stliport {int dummy; } ;
struct stlibrd {int dummy; } ;


 int __stli_sendcmd (struct stlibrd*,struct stliport*,unsigned long,void*,int,int) ;
 int brd_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void stli_sendcmd(struct stlibrd *brdp, struct stliport *portp, unsigned long cmd, void *arg, int size, int copyback)
{
 unsigned long flags;

 spin_lock_irqsave(&brd_lock, flags);
 __stli_sendcmd(brdp, portp, cmd, arg, size, copyback);
 spin_unlock_irqrestore(&brd_lock, flags);
}
