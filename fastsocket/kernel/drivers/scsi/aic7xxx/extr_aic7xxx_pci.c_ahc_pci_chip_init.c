
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int dscommand0; int dspcistatus; int optionmode; int crccontrol1; int scbbaddr; int dff_thrsh; int targcrccnt; } ;
struct TYPE_4__ {TYPE_1__ pci_softc; } ;
struct ahc_softc {int features; TYPE_2__ bus_softc; } ;


 int AHC_DT ;
 int AHC_MULTI_FUNC ;
 int AHC_ULTRA2 ;
 int ALT_MODE ;
 int CRCCONTROL1 ;
 int DFF_THRSH ;
 int DSCOMMAND0 ;
 int DSPCISTATUS ;
 int OPTIONMODE ;
 int SCBBADDR ;
 int SFUNCT ;
 int TARGCRCCNT ;
 int ahc_chip_init (struct ahc_softc*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_outw (struct ahc_softc*,int ,int ) ;

__attribute__((used)) static int
ahc_pci_chip_init(struct ahc_softc *ahc)
{
 ahc_outb(ahc, DSCOMMAND0, ahc->bus_softc.pci_softc.dscommand0);
 ahc_outb(ahc, DSPCISTATUS, ahc->bus_softc.pci_softc.dspcistatus);
 if ((ahc->features & AHC_DT) != 0) {
  u_int sfunct;

  sfunct = ahc_inb(ahc, SFUNCT) & ~ALT_MODE;
  ahc_outb(ahc, SFUNCT, sfunct | ALT_MODE);
  ahc_outb(ahc, OPTIONMODE, ahc->bus_softc.pci_softc.optionmode);
  ahc_outw(ahc, TARGCRCCNT, ahc->bus_softc.pci_softc.targcrccnt);
  ahc_outb(ahc, SFUNCT, sfunct);
  ahc_outb(ahc, CRCCONTROL1,
    ahc->bus_softc.pci_softc.crccontrol1);
 }
 if ((ahc->features & AHC_MULTI_FUNC) != 0)
  ahc_outb(ahc, SCBBADDR, ahc->bus_softc.pci_softc.scbbaddr);

 if ((ahc->features & AHC_ULTRA2) != 0)
  ahc_outb(ahc, DFF_THRSH, ahc->bus_softc.pci_softc.dff_thrsh);

 return (ahc_chip_init(ahc));
}
