
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct env {int lock; scalar_t__ regs; } ;


 scalar_t__ REG_ADDR ;
 scalar_t__ REG_DATA ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void env_write(struct env *p, u8 ireg, u8 val)
{
 spin_lock(&p->lock);
 writeb(ireg, p->regs + REG_ADDR);
 writeb(val, p->regs + REG_DATA);
 spin_unlock(&p->lock);
}
