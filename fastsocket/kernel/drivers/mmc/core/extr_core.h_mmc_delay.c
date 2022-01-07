
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int cond_resched () ;
 int mdelay (unsigned int) ;
 int msleep (unsigned int) ;

__attribute__((used)) static inline void mmc_delay(unsigned int ms)
{
 if (ms < 1000 / HZ) {
  cond_resched();
  mdelay(ms);
 } else {
  msleep(ms);
 }
}
