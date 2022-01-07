
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crunch_state {int dummy; } ;
struct thread_info {struct crunch_state crunchstate; } ;
struct notifier_block {int dummy; } ;


 int EP93XX_SYSCON_DEVCFG ;
 int EP93XX_SYSCON_DEVCFG_CPENA ;
 int EP93XX_SYSCON_SWLOCK ;
 int NOTIFY_DONE ;



 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int crunch_enabled (int) ;
 struct crunch_state* crunch_owner ;
 int crunch_task_release (struct thread_info*) ;
 int memset (struct crunch_state*,int ,int) ;

__attribute__((used)) static int crunch_do(struct notifier_block *self, unsigned long cmd, void *t)
{
 struct thread_info *thread = (struct thread_info *)t;
 struct crunch_state *crunch_state;
 u32 devcfg;

 crunch_state = &thread->crunchstate;

 switch (cmd) {
 case 130:
  memset(crunch_state, 0, sizeof(*crunch_state));






 case 129:
  crunch_task_release(thread);
  break;

 case 128:
  devcfg = __raw_readl(EP93XX_SYSCON_DEVCFG);
  if (crunch_enabled(devcfg) || crunch_owner == crunch_state) {





   devcfg ^= EP93XX_SYSCON_DEVCFG_CPENA;
   __raw_writel(0xaa, EP93XX_SYSCON_SWLOCK);
   __raw_writel(devcfg, EP93XX_SYSCON_DEVCFG);
  }
  break;
 }

 return NOTIFY_DONE;
}
