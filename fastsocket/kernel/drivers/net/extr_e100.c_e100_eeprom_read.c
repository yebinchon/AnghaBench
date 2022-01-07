
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nic {TYPE_1__* csr; } ;
typedef int __le16 ;
struct TYPE_2__ {int eeprom_ctrl_lo; } ;


 int cpu_to_le16 (int) ;
 int e100_write_flush (struct nic*) ;
 int eecs ;
 int eedi ;
 int eedo ;
 int eesk ;
 int ioread8 (int *) ;
 int iowrite8 (int,int *) ;
 int op_read ;
 int udelay (int) ;

__attribute__((used)) static __le16 e100_eeprom_read(struct nic *nic, u16 *addr_len, u16 addr)
{
 u32 cmd_addr_data;
 u16 data = 0;
 u8 ctrl;
 int i;

 cmd_addr_data = ((op_read << *addr_len) | addr) << 16;


 iowrite8(eecs | eesk, &nic->csr->eeprom_ctrl_lo);
 e100_write_flush(nic); udelay(4);


 for (i = 31; i >= 0; i--) {
  ctrl = (cmd_addr_data & (1 << i)) ? eecs | eedi : eecs;
  iowrite8(ctrl, &nic->csr->eeprom_ctrl_lo);
  e100_write_flush(nic); udelay(4);

  iowrite8(ctrl | eesk, &nic->csr->eeprom_ctrl_lo);
  e100_write_flush(nic); udelay(4);



  ctrl = ioread8(&nic->csr->eeprom_ctrl_lo);
  if (!(ctrl & eedo) && i > 16) {
   *addr_len -= (i - 16);
   i = 17;
  }

  data = (data << 1) | (ctrl & eedo ? 1 : 0);
 }


 iowrite8(0, &nic->csr->eeprom_ctrl_lo);
 e100_write_flush(nic); udelay(4);

 return cpu_to_le16(data);
}
