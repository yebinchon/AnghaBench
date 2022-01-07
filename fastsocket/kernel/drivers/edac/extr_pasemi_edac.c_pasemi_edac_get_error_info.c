
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int dev; } ;


 int MCDEBUG_ERRCNT1 ;
 int MCDEBUG_ERRCNT1_SBE_CNT_OVRFLO ;
 int MCDEBUG_ERRSTA ;
 int MCDEBUG_ERRSTA_MBE_STATUS ;
 int MCDEBUG_ERRSTA_RFL_STATUS ;
 int MCDEBUG_ERRSTA_SBE_STATUS ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u32 pasemi_edac_get_error_info(struct mem_ctl_info *mci)
{
 struct pci_dev *pdev = to_pci_dev(mci->dev);
 u32 tmp;

 pci_read_config_dword(pdev, MCDEBUG_ERRSTA,
         &tmp);

 tmp &= (MCDEBUG_ERRSTA_RFL_STATUS | MCDEBUG_ERRSTA_MBE_STATUS
  | MCDEBUG_ERRSTA_SBE_STATUS);

 if (tmp) {
  if (tmp & MCDEBUG_ERRSTA_SBE_STATUS)
   pci_write_config_dword(pdev, MCDEBUG_ERRCNT1,
            MCDEBUG_ERRCNT1_SBE_CNT_OVRFLO);
  pci_write_config_dword(pdev, MCDEBUG_ERRSTA, tmp);
 }

 return tmp;
}
