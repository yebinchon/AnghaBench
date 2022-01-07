
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HCRE ;
 int inb_status (unsigned int) ;
 int outb_command (unsigned char,unsigned int) ;
 int pr_warning (char*) ;

__attribute__((used)) static inline bool send_pcb_fast(unsigned int base_addr, unsigned char byte)
{
 unsigned int timeout;
 outb_command(byte, base_addr);
 for (timeout = 0; timeout < 40000; timeout++) {
  if (inb_status(base_addr) & HCRE)
   return 0;
 }
 pr_warning("3c505: send_pcb_fast timed out\n");
 return 1;
}
