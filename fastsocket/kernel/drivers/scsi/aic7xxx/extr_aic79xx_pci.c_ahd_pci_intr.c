
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct ahd_softc {int dev_softc; } ;
typedef int ahd_mode_state ;


 int AHD_MODE_CFG ;
 int CLRINT ;
 int CLRPCIINT ;
 int DF0PCISTAT ;
 int INTSTAT ;
 int PCIINT ;
 scalar_t__ PCIR_STATUS ;
 int SPLTINT ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int,int) ;
 int ahd_pci_read_config (int ,scalar_t__,int) ;
 int ahd_pci_split_intr (struct ahd_softc*,int) ;
 int ahd_pci_write_config (int ,scalar_t__,int,int) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_unpause (struct ahd_softc*) ;
 int * pci_status_source ;
 char** pci_status_strings ;
 int printf (char const*,char*,...) ;

__attribute__((used)) static void
ahd_pci_intr(struct ahd_softc *ahd)
{
 uint8_t pci_status[8];
 ahd_mode_state saved_modes;
 u_int pci_status1;
 u_int intstat;
 u_int i;
 u_int reg;

 intstat = ahd_inb(ahd, INTSTAT);

 if ((intstat & SPLTINT) != 0)
  ahd_pci_split_intr(ahd, intstat);

 if ((intstat & PCIINT) == 0)
  return;

 printf("%s: PCI error Interrupt\n", ahd_name(ahd));
 saved_modes = ahd_save_modes(ahd);
 ahd_dump_card_state(ahd);
 ahd_set_modes(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
 for (i = 0, reg = DF0PCISTAT; i < 8; i++, reg++) {

  if (i == 5)
   continue;
  pci_status[i] = ahd_inb(ahd, reg);

  ahd_outb(ahd, reg, pci_status[i]);
 }

 for (i = 0; i < 8; i++) {
  u_int bit;

  if (i == 5)
   continue;

  for (bit = 0; bit < 8; bit++) {

   if ((pci_status[i] & (0x1 << bit)) != 0) {
    static const char *s;

    s = pci_status_strings[bit];
    if (i == 7 && bit == 3)
     s = "%s: Signaled Target Abort\n";
    printf(s, ahd_name(ahd), pci_status_source[i]);
   }
  }
 }
 pci_status1 = ahd_pci_read_config(ahd->dev_softc,
       PCIR_STATUS + 1, 1);
 ahd_pci_write_config(ahd->dev_softc, PCIR_STATUS + 1,
        pci_status1, 1);
 ahd_restore_modes(ahd, saved_modes);
 ahd_outb(ahd, CLRINT, CLRPCIINT);
 ahd_unpause(ahd);
}
