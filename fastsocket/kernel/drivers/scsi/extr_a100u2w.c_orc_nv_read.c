
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct orc_host {scalar_t__ base; } ;


 unsigned char HDO ;
 unsigned char ORC_CMD_GET_NVM ;
 scalar_t__ ORC_HCTRL ;
 scalar_t__ ORC_HDATA ;
 scalar_t__ ORC_HSTUS ;
 int inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;
 scalar_t__ wait_HDO_off (struct orc_host*) ;
 scalar_t__ wait_hdi_set (struct orc_host*,unsigned char*) ;

__attribute__((used)) static u8 orc_nv_read(struct orc_host * host, u8 address, u8 *ptr)
{
 unsigned char data;

 outb(ORC_CMD_GET_NVM, host->base + ORC_HDATA);
 outb(HDO, host->base + ORC_HCTRL);
 if (wait_HDO_off(host) == 0)
  return 0;

 outb(address, host->base + ORC_HDATA);
 outb(HDO, host->base + ORC_HCTRL);
 if (wait_HDO_off(host) == 0)
  return 0;

 if (wait_hdi_set(host, &data) == 0)
  return 0;
 *ptr = inb(host->base + ORC_HDATA);
 outb(data, host->base + ORC_HSTUS);

 return 1;

}
