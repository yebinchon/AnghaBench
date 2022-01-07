
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {struct i5400_pvt* pvt_info; } ;
struct i5400_pvt {int branchmap_werrors; } ;


 int EMASK_FBD ;
 int ENABLE_EMASK_ALL ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static void i5400_enable_error_reporting(struct mem_ctl_info *mci)
{
 struct i5400_pvt *pvt;
 u32 fbd_error_mask;

 pvt = mci->pvt_info;


 pci_read_config_dword(pvt->branchmap_werrors, EMASK_FBD,
   &fbd_error_mask);


 fbd_error_mask &= ~(ENABLE_EMASK_ALL);

 pci_write_config_dword(pvt->branchmap_werrors, EMASK_FBD,
   fbd_error_mask);
}
