
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_c0_status (int) ;

__attribute__((used)) static inline void enable_local_irq(unsigned int ip)
{
 int ipnum = 0x100 << ip;

 set_c0_status(ipnum);
}
