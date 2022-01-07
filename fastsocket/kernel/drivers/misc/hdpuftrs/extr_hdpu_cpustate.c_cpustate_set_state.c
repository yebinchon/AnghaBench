
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char cached_val; int lock; int set_addr; int clr_addr; } ;


 TYPE_1__ cpustate ;
 int printk (char*,unsigned char) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void cpustate_set_state(unsigned char new_state)
{
 unsigned int state = (new_state << 21);




 spin_lock(&cpustate.lock);
 cpustate.cached_val = new_state;
 writel((0xff << 21), cpustate.clr_addr);
 writel(state, cpustate.set_addr);
 spin_unlock(&cpustate.lock);
}
