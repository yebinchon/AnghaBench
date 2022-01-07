
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amd64_pvt {int F2; } ;


 int __amd64_read_pci_cfg_dword (int ,int,int *,char const*) ;

__attribute__((used)) static int f10_read_dct_pci_cfg(struct amd64_pvt *pvt, int addr, u32 *val,
     const char *func)
{
 return __amd64_read_pci_cfg_dword(pvt->F2, addr, val, func);
}
