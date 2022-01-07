
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct amd64_pvt {int F2; } ;


 int __amd64_read_pci_cfg_dword (int ,int,int *,char const*) ;
 int f15h_select_dct (struct amd64_pvt*,int) ;

__attribute__((used)) static int f15_read_dct_pci_cfg(struct amd64_pvt *pvt, int addr, u32 *val,
     const char *func)
{
 u8 dct = 0;

 if (addr >= 0x140 && addr <= 0x1a0) {
  dct = 1;
  addr -= 0x100;
 }

 f15h_select_dct(pvt, dct);

 return __amd64_read_pci_cfg_dword(pvt->F2, addr, val, func);
}
