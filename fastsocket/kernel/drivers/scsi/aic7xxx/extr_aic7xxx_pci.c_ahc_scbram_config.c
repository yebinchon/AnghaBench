
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ahc_softc {int features; int dev_softc; int flags; } ;


 int AHC_LSCBS_ENABLED ;
 int AHC_MULTI_FUNC ;
 int AHC_ULTRA2 ;
 int DEVCONFIG ;
 int DSCOMMAND0 ;
 int EXTSCBPEN ;
 int EXTSCBTIME ;
 int INTSCBRAMSEL ;
 int SCBBADDR ;
 int SCBRAMSEL ;
 int SCBSIZE32 ;
 int USCBSIZE32 ;
 int ahc_get_pci_function (int ) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int ) ;
 int ahc_pci_read_config (int ,int ,int) ;
 int ahc_pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static void
ahc_scbram_config(struct ahc_softc *ahc, int enable, int pcheck,
    int fast, int large)
{
 uint32_t devconfig;

 if (ahc->features & AHC_MULTI_FUNC) {




  ahc_outb(ahc, SCBBADDR, ahc_get_pci_function(ahc->dev_softc));
 }

 ahc->flags &= ~AHC_LSCBS_ENABLED;
 if (large)
  ahc->flags |= AHC_LSCBS_ENABLED;
 devconfig = ahc_pci_read_config(ahc->dev_softc, DEVCONFIG, 4);
 if ((ahc->features & AHC_ULTRA2) != 0) {
  u_int dscommand0;

  dscommand0 = ahc_inb(ahc, DSCOMMAND0);
  if (enable)
   dscommand0 &= ~INTSCBRAMSEL;
  else
   dscommand0 |= INTSCBRAMSEL;
  if (large)
   dscommand0 &= ~USCBSIZE32;
  else
   dscommand0 |= USCBSIZE32;
  ahc_outb(ahc, DSCOMMAND0, dscommand0);
 } else {
  if (fast)
   devconfig &= ~EXTSCBTIME;
  else
   devconfig |= EXTSCBTIME;
  if (enable)
   devconfig &= ~SCBRAMSEL;
  else
   devconfig |= SCBRAMSEL;
  if (large)
   devconfig &= ~SCBSIZE32;
  else
   devconfig |= SCBSIZE32;
 }
 if (pcheck)
  devconfig |= EXTSCBPEN;
 else
  devconfig &= ~EXTSCBPEN;

 ahc_pci_write_config(ahc->dev_softc, DEVCONFIG, devconfig, 4);
}
