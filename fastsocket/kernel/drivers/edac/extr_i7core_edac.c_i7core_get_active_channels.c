
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;


 int DIMM_PRESENT (int) ;
 int ENODEV ;
 int KERN_ERR ;
 int MC_CONTROL ;
 int MC_DOD_CH_DIMM0 ;
 int MC_DOD_CH_DIMM1 ;
 int MC_DOD_CH_DIMM2 ;
 int MC_STATUS ;
 int NUM_CHANS ;
 int debugf0 (char*,int const,unsigned int) ;
 struct pci_dev* get_pdev_slot_func (int const,int,int) ;
 int i7core_printk (int ,char*,int const,...) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;

__attribute__((used)) static int i7core_get_active_channels(const u8 socket, unsigned *channels,
          unsigned *csrows)
{
 struct pci_dev *pdev = ((void*)0);
 int i, j;
 u32 status, control;

 *channels = 0;
 *csrows = 0;

 pdev = get_pdev_slot_func(socket, 3, 0);
 if (!pdev) {
  i7core_printk(KERN_ERR, "Couldn't find socket %d fn 3.0!!!\n",
         socket);
  return -ENODEV;
 }


 pci_read_config_dword(pdev, MC_STATUS, &status);
 pci_read_config_dword(pdev, MC_CONTROL, &control);

 for (i = 0; i < NUM_CHANS; i++) {
  u32 dimm_dod[3];

  if (!(control & (1 << (8 + i))))
   continue;


  if (status & (1 << i))
   continue;

  pdev = get_pdev_slot_func(socket, i + 4, 1);
  if (!pdev) {
   i7core_printk(KERN_ERR, "Couldn't find socket %d "
      "fn %d.%d!!!\n",
      socket, i + 4, 1);
   return -ENODEV;
  }

  pci_read_config_dword(pdev,
    MC_DOD_CH_DIMM0, &dimm_dod[0]);
  pci_read_config_dword(pdev,
    MC_DOD_CH_DIMM1, &dimm_dod[1]);
  pci_read_config_dword(pdev,
    MC_DOD_CH_DIMM2, &dimm_dod[2]);

  (*channels)++;

  for (j = 0; j < 3; j++) {
   if (!DIMM_PRESENT(dimm_dod[j]))
    continue;
   (*csrows)++;
  }
 }

 debugf0("Number of active channels on socket %d: %d\n",
  socket, *channels);

 return 0;
}
