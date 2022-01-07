
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int REG_DEV_SETUP (int) ;
 int REG_MEM_BIST ;
 int REG_SPI4_MISC ;
 int check_bist (int *,int) ;
 int enable_mem (int *,int) ;
 int mdelay (int) ;
 int run_bist (int *,int) ;
 int udelay (int) ;
 int vsc_read (int *,int ,int *) ;
 int vsc_write (int *,int ,int) ;

__attribute__((used)) static int run_bist_all(adapter_t *adapter)
{
 int port = 0;
 u32 val = 0;

 vsc_write(adapter, REG_MEM_BIST, 0x5);
 vsc_read(adapter, REG_MEM_BIST, &val);

 for (port = 0; port < 12; port++)
  vsc_write(adapter, REG_DEV_SETUP(port), 0x0);

 udelay(300);
 vsc_write(adapter, REG_SPI4_MISC, 0x00040409);
 udelay(300);

 (void) run_bist(adapter,13);
 (void) run_bist(adapter,14);
 (void) run_bist(adapter,20);
 (void) run_bist(adapter,21);
 mdelay(200);
 (void) check_bist(adapter,13);
 (void) check_bist(adapter,14);
 (void) check_bist(adapter,20);
 (void) check_bist(adapter,21);
 udelay(100);
 (void) enable_mem(adapter,13);
 (void) enable_mem(adapter,14);
 (void) enable_mem(adapter,20);
 (void) enable_mem(adapter,21);
 udelay(300);
 vsc_write(adapter, REG_SPI4_MISC, 0x60040400);
 udelay(300);
 for (port = 0; port < 12; port++)
  vsc_write(adapter, REG_DEV_SETUP(port), 0x1);

 udelay(300);
 vsc_write(adapter, REG_MEM_BIST, 0x0);
 mdelay(10);
 return 0;
}
