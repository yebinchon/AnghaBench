
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct netxen_adapter {int dummy; } ;


 int do_rom_fast_read_words (struct netxen_adapter*,int,int *,size_t) ;
 int netxen_rom_lock (struct netxen_adapter*) ;
 int netxen_rom_unlock (struct netxen_adapter*) ;

int
netxen_rom_fast_read_words(struct netxen_adapter *adapter, int addr,
    u8 *bytes, size_t size)
{
 int ret;

 ret = netxen_rom_lock(adapter);
 if (ret < 0)
  return ret;

 ret = do_rom_fast_read_words(adapter, addr, bytes, size);

 netxen_rom_unlock(adapter);
 return ret;
}
