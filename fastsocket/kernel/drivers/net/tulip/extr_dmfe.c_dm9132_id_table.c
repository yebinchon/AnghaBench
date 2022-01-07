
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dev_mc_list {scalar_t__ dmi_addr; struct dev_mc_list* next; } ;
struct DEVICE {int base_addr; struct dev_mc_list* mc_list; scalar_t__ dev_addr; } ;


 int DMFE_DBUG (int ,char*,int ) ;
 int cal_CRC (char*,int,int ) ;
 int outw (int,unsigned long) ;

__attribute__((used)) static void dm9132_id_table(struct DEVICE *dev, int mc_cnt)
{
 struct dev_mc_list *mcptr;
 u16 * addrptr;
 unsigned long ioaddr = dev->base_addr+0xc0;
 u32 hash_val;
 u16 i, hash_table[4];

 DMFE_DBUG(0, "dm9132_id_table()", 0);


 addrptr = (u16 *) dev->dev_addr;
 outw(addrptr[0], ioaddr);
 ioaddr += 4;
 outw(addrptr[1], ioaddr);
 ioaddr += 4;
 outw(addrptr[2], ioaddr);
 ioaddr += 4;


 for (i = 0; i < 4; i++)
  hash_table[i] = 0x0;


 hash_table[3] = 0x8000;


 for (mcptr = dev->mc_list, i = 0; i < mc_cnt; i++, mcptr = mcptr->next) {
  hash_val = cal_CRC( (char *) mcptr->dmi_addr, 6, 0) & 0x3f;
  hash_table[hash_val / 16] |= (u16) 1 << (hash_val % 16);
 }


 for (i = 0; i < 4; i++, ioaddr += 4)
  outw(hash_table[i], ioaddr);
}
