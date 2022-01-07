
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int A_ELMER0_GPO ;
 int REG_SW_RESET ;
 int mdelay (int) ;
 int t1_tpi_read (int *,int ,int*) ;
 int t1_tpi_write (int *,int ,int) ;
 int udelay (int) ;
 int vsc_read (int *,int ,int*) ;
 int vsc_write (int *,int ,int) ;

__attribute__((used)) static void vsc7326_full_reset(adapter_t* adapter)
{
 u32 val;
 u32 result = 0xffff;

 t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 val &= ~1;
 t1_tpi_write(adapter, A_ELMER0_GPO, val);
 udelay(2);
 val |= 0x1;
 val |= 0x800;
 t1_tpi_write(adapter, A_ELMER0_GPO, val);
 mdelay(1);
 vsc_write(adapter, REG_SW_RESET, 0x80000001);
 do {
  mdelay(1);
  vsc_read(adapter, REG_SW_RESET, &result);
 } while (result != 0x0);
}
