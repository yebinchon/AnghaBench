
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nic {int eeprom_wc; int netdev; int * eeprom; } ;


 int EAGAIN ;
 int cpu_to_le16 (int) ;
 int e100_eeprom_read (struct nic*,int*,int) ;
 int eeprom_bad_csum_allow ;
 int le16_to_cpu (int ) ;
 int netif_err (struct nic*,int ,int ,char*) ;
 int probe ;

__attribute__((used)) static int e100_eeprom_load(struct nic *nic)
{
 u16 addr, addr_len = 8, checksum = 0;


 e100_eeprom_read(nic, &addr_len, 0);
 nic->eeprom_wc = 1 << addr_len;

 for (addr = 0; addr < nic->eeprom_wc; addr++) {
  nic->eeprom[addr] = e100_eeprom_read(nic, &addr_len, addr);
  if (addr < nic->eeprom_wc - 1)
   checksum += le16_to_cpu(nic->eeprom[addr]);
 }



 if (cpu_to_le16(0xBABA - checksum) != nic->eeprom[nic->eeprom_wc - 1]) {
  netif_err(nic, probe, nic->netdev, "EEPROM corrupted\n");
  if (!eeprom_bad_csum_allow)
   return -EAGAIN;
 }

 return 0;
}
