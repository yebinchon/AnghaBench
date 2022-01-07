
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {char channel; int flags; int dev_softc; } ;
typedef int ahc_dev_softc_t ;






 int AHC_LARGE_SEEPROM ;
 int ahc_get_pci_slot (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
ahc_aha494XX_setup(struct ahc_softc *ahc)
{
 ahc_dev_softc_t pci;

 pci = ahc->dev_softc;
 switch (ahc_get_pci_slot(pci)) {
 case 131:
  ahc->channel = 'A';
  break;
 case 130:
  ahc->channel = 'B';
  break;
 case 129:
  ahc->channel = 'C';
  break;
 case 128:
  ahc->channel = 'D';
  break;
 default:
  printf("adapter at unexpected slot %d\n"
         "unable to map to a channel\n",
         ahc_get_pci_slot(pci));
  ahc->channel = 'A';
 }
 ahc->flags |= AHC_LARGE_SEEPROM;
 return (0);
}
