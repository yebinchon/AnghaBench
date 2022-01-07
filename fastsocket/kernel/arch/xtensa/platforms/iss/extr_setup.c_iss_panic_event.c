
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;

__attribute__((used)) static int
iss_panic_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 __asm__ __volatile__("movi a2, -1; simcall\n");
 return NOTIFY_DONE;
}
