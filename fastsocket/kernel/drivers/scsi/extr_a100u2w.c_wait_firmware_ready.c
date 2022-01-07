
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct orc_host {scalar_t__ base; } ;


 scalar_t__ ORC_HSTUS ;
 int RREADY ;
 int inb (scalar_t__) ;
 int mdelay (int) ;

__attribute__((used)) static u8 wait_firmware_ready(struct orc_host * host)
{
 int i;

 for (i = 0; i < 10; i++) {
  if (inb(host->base + ORC_HSTUS) & RREADY)
   return 1;
  mdelay(100);
 }
 return 0;
}
