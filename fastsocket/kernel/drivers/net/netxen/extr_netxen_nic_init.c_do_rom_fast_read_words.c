
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct netxen_adapter {int dummy; } ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;
 int do_rom_fast_read (struct netxen_adapter*,int,int*) ;

__attribute__((used)) static int do_rom_fast_read_words(struct netxen_adapter *adapter, int addr,
      u8 *bytes, size_t size)
{
 int addridx;
 int ret = 0;

 for (addridx = addr; addridx < (addr + size); addridx += 4) {
  int v;
  ret = do_rom_fast_read(adapter, addridx, &v);
  if (ret != 0)
   break;
  *(__le32 *)bytes = cpu_to_le32(v);
  bytes += 4;
 }

 return ret;
}
