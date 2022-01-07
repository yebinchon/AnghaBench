
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HCRE ;
 int HZ ;
 int inb_status (unsigned int) ;
 int jiffies ;
 int outb_command (unsigned char,unsigned int) ;
 int pr_warning (char*) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static inline bool send_pcb_slow(unsigned int base_addr, unsigned char byte)
{
 unsigned long timeout;
 outb_command(byte, base_addr);
 for (timeout = jiffies + 5*HZ/100; time_before(jiffies, timeout);) {
  if (inb_status(base_addr) & HCRE)
   return 0;
 }
 pr_warning("3c505: send_pcb_slow timed out\n");
 return 1;
}
