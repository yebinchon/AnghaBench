
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 int do_rom_fast_read (struct qlcnic_adapter*,int ,int *) ;
 scalar_t__ qlcnic_rom_lock (struct qlcnic_adapter*) ;
 int qlcnic_rom_unlock (struct qlcnic_adapter*) ;

int qlcnic_rom_fast_read(struct qlcnic_adapter *adapter, u32 addr, u32 *valp)
{
 int ret;

 if (qlcnic_rom_lock(adapter) != 0)
  return -EIO;

 ret = do_rom_fast_read(adapter, addr, valp);
 qlcnic_rom_unlock(adapter);
 return ret;
}
