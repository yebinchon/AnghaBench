
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct env {int lock; scalar_t__ regs; } ;


 scalar_t__ REG_ADDR ;
 scalar_t__ REG_DATA ;
 int readb (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static u8 env_read(struct env *p, u8 ireg)
{
 u8 ret;

 spin_lock(&p->lock);
 writeb(ireg, p->regs + REG_ADDR);
 ret = readb(p->regs + REG_DATA);
 spin_unlock(&p->lock);

 return ret;
}
