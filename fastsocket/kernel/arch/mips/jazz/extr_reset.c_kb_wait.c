
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int jazz_read_status () ;
 unsigned long jiffies ;
 scalar_t__ time_before_eq (unsigned long,unsigned long) ;

__attribute__((used)) static inline void kb_wait(void)
{
 unsigned long start = jiffies;
 unsigned long timeout = start + HZ/2;

 do {
  if (! (jazz_read_status() & 0x02))
   return;
 } while (time_before_eq(jiffies, timeout));
}
