
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int CH_ERR (char*,int) ;
 int REG_RAM_BIST_CMD ;
 int REG_RAM_BIST_RESULT ;
 int udelay (int) ;
 int vsc_read (int *,int ,int*) ;
 int vsc_write (int *,int ,int) ;

__attribute__((used)) static int bist_rd(adapter_t *adapter, int moduleid, int address)
{
 int data = 0;
 u32 result = 0;

 if ((address != 0x0) &&
     (address != 0x1) &&
     (address != 0x2) &&
     (address != 0xd) &&
     (address != 0xe))
   CH_ERR("No bist address: 0x%x\n", address);

 data = ((0x00 << 24) | ((address & 0xff) << 16) | (0x00 << 8) |
  ((moduleid & 0xff) << 0));
 vsc_write(adapter, REG_RAM_BIST_CMD, data);

 udelay(10);

 vsc_read(adapter, REG_RAM_BIST_RESULT, &result);
 if ((result & (1 << 9)) != 0x0)
  CH_ERR("Still in bist read: 0x%x\n", result);
 else if ((result & (1 << 8)) != 0x0)
  CH_ERR("bist read error: 0x%x\n", result);

 return (result & 0xff);
}
