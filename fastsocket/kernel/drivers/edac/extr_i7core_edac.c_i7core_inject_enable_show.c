
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct TYPE_2__ {size_t channel; int enable; } ;
struct i7core_pvt {TYPE_1__ inject; int ** pci_ch; } ;
typedef int ssize_t ;


 int MC_CHANNEL_ERROR_INJECT ;
 int debugf0 (char*,int) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t i7core_inject_enable_show(struct mem_ctl_info *mci,
     char *data)
{
 struct i7core_pvt *pvt = mci->pvt_info;
 u32 injectmask;

 if (!pvt->pci_ch[pvt->inject.channel][0])
  return 0;

 pci_read_config_dword(pvt->pci_ch[pvt->inject.channel][0],
          MC_CHANNEL_ERROR_INJECT, &injectmask);

 debugf0("Inject error read: 0x%018x\n", injectmask);

 if (injectmask & 0x0c)
  pvt->inject.enable = 1;

 return sprintf(data, "%d\n", pvt->inject.enable);
}
