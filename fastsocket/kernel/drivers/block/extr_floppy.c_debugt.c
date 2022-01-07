
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int DEBUGT ;
 TYPE_1__* DP ;
 scalar_t__ debugtimer ;
 scalar_t__ jiffies ;
 int printk (char*,char const*,scalar_t__) ;

__attribute__((used)) static inline void debugt(const char *message)
{
 if (DP->flags & DEBUGT)
  printk("%s dtime=%lu\n", message, jiffies - debugtimer);
}
