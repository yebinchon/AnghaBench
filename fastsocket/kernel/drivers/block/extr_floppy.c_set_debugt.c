
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugtimer ;
 int jiffies ;

__attribute__((used)) static inline void set_debugt(void)
{
 debugtimer = jiffies;
}
