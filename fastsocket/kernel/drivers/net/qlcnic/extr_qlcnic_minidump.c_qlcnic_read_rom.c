
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct __mem {int addr; int size; } ;
struct TYPE_3__ {struct __mem mem; } ;
struct qlcnic_dump_entry {TYPE_1__ region; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
typedef int __le32 ;
struct TYPE_4__ {int pci_func; } ;


 int FLASH_ROM_DATA ;
 int FLASH_ROM_WINDOW ;
 int LSW (int) ;
 int MAX_CTL_CHECK ;
 int QLCNIC_FLASH_LOCK ;
 int QLCNIC_FLASH_LOCK_OWNER ;
 int QLCNIC_FLASH_UNLOCK ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int ) ;
 int cpu_to_le32 (int) ;
 int msleep (int) ;
 int qlcnic_ind_rd (struct qlcnic_adapter*,int) ;
 int qlcnic_ind_wr (struct qlcnic_adapter*,int ,int) ;

__attribute__((used)) static u32 qlcnic_read_rom(struct qlcnic_adapter *adapter,
      struct qlcnic_dump_entry *entry, __le32 *buffer)
{
 int i, count = 0;
 u32 fl_addr, size, val, lck_val, addr;
 struct __mem *rom = &entry->region.mem;

 fl_addr = rom->addr;
 size = rom->size / 4;
lock_try:
 lck_val = QLC_SHARED_REG_RD32(adapter, QLCNIC_FLASH_LOCK);
 if (!lck_val && count < MAX_CTL_CHECK) {
  msleep(10);
  count++;
  goto lock_try;
 }
 QLC_SHARED_REG_WR32(adapter, QLCNIC_FLASH_LOCK_OWNER,
       adapter->ahw->pci_func);
 for (i = 0; i < size; i++) {
  addr = fl_addr & 0xFFFF0000;
  qlcnic_ind_wr(adapter, FLASH_ROM_WINDOW, addr);
  addr = LSW(fl_addr) + FLASH_ROM_DATA;
  val = qlcnic_ind_rd(adapter, addr);
  fl_addr += 4;
  *buffer++ = cpu_to_le32(val);
 }
 QLC_SHARED_REG_RD32(adapter, QLCNIC_FLASH_UNLOCK);
 return rom->size;
}
