
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int suspend_heartbeats ;

__attribute__((used)) static int panic_happened(struct notifier_block *n, unsigned long val, void *v)
{
 suspend_heartbeats = 1;
 return 0;
}
