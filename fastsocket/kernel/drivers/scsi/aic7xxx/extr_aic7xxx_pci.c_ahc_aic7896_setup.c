
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {char channel; int instruction_ram_size; int bugs; int flags; int features; int chip; int dev_softc; } ;
typedef int ahc_dev_softc_t ;


 int AHC_AIC7896 ;
 int AHC_AIC7896_FE ;
 int AHC_CACHETHEN_DIS_BUG ;
 int AHC_NEWEEPROM_FMT ;
 int ahc_get_pci_function (int ) ;

__attribute__((used)) static int
ahc_aic7896_setup(struct ahc_softc *ahc)
{
 ahc_dev_softc_t pci;

 pci = ahc->dev_softc;
 ahc->channel = ahc_get_pci_function(pci) == 1 ? 'B' : 'A';
 ahc->chip = AHC_AIC7896;
 ahc->features = AHC_AIC7896_FE;
 ahc->flags |= AHC_NEWEEPROM_FMT;
 ahc->bugs |= AHC_CACHETHEN_DIS_BUG;
 ahc->instruction_ram_size = 768;
 return (0);
}
