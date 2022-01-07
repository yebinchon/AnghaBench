
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ioc3_private {struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;
struct TYPE_2__ {int * dev_addr; } ;


 int ioc3_w_gpcr_s (int) ;
 int nic_init (struct ioc3*) ;
 int nic_read_byte (struct ioc3*) ;
 int nic_write_byte (struct ioc3*,int) ;
 int printk (char*) ;
 TYPE_1__* priv_netdev (struct ioc3_private*) ;
 int udelay (int) ;

__attribute__((used)) static void ioc3_get_eaddr_nic(struct ioc3_private *ip)
{
 struct ioc3 *ioc3 = ip->regs;
 u8 nic[14];
 int tries = 2;
 int i;

 ioc3_w_gpcr_s(1 << 21);

 while (tries--) {
  if (!nic_init(ioc3))
   break;
  udelay(500);
 }

 if (tries < 0) {
  printk("Failed to read MAC address\n");
  return;
 }


 nic_write_byte(ioc3, 0xf0);
 nic_write_byte(ioc3, 0x00);
 nic_write_byte(ioc3, 0x00);

 for (i = 13; i >= 0; i--)
  nic[i] = nic_read_byte(ioc3);

 for (i = 2; i < 8; i++)
  priv_netdev(ip)->dev_addr[i - 2] = nic[i];
}
