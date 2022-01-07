
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ioc3 {int dummy; } ;


 int nic_find (struct ioc3*,int*) ;
 int nic_reset (struct ioc3*) ;
 int nic_write_byte (struct ioc3*,int) ;
 int printk (char*,...) ;

__attribute__((used)) static int nic_init(struct ioc3 *ioc3)
{
 const char *unknown = "unknown";
 const char *type = unknown;
 u8 crc;
 u8 serial[6];
 int save = 0, i;

 while (1) {
  u64 reg;
  reg = nic_find(ioc3, &save);

  switch (reg & 0xff) {
  case 0x91:
   type = "DS1981U";
   break;
  default:
   if (save == 0) {

    return -1;
   }
   continue;
  }

  nic_reset(ioc3);


  nic_write_byte(ioc3, 0x55);
  for (i = 0; i < 8; i++)
   nic_write_byte(ioc3, (reg >> (i << 3)) & 0xff);

  reg >>= 8;
  for (i = 0; i < 6; i++) {
   serial[i] = reg & 0xff;
   reg >>= 8;
  }
  crc = reg & 0xff;
  break;
 }

 printk("Found %s NIC", type);
 if (type != unknown)
  printk (" registration number %pM, CRC %02x", serial, crc);
 printk(".\n");

 return 0;
}
