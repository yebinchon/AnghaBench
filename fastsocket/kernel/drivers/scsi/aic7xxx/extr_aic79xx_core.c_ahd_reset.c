
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ahd_softc {int bugs; int pause; int features; int dev_softc; } ;


 int AHD_MODE_SCSI ;
 int AHD_PCIX_CHIPRST_BUG ;
 int AHD_WIDE ;
 int CHIPRST ;
 int CHIPRSTACK ;
 int HCNTRL ;
 int MODE_PTR ;
 int PCIM_CMD_PERRESPEN ;
 int PCIM_CMD_SERRESPEN ;
 scalar_t__ PCIR_COMMAND ;
 scalar_t__ PCIR_STATUS ;
 int SBLKCTL ;
 int SELWIDE ;
 int STPWEN ;
 int SXFRCTL1 ;
 int ahd_build_mode_state (struct ahd_softc*,int ,int ) ;
 int ahd_chip_init (struct ahd_softc*) ;
 int ahd_delay (int) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_known_modes (struct ahd_softc*,int ,int ) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_pause (struct ahd_softc*) ;
 int ahd_pci_read_config (int ,scalar_t__,int) ;
 int ahd_pci_write_config (int ,scalar_t__,int,int) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_update_modes (struct ahd_softc*) ;
 int printf (char*,char*) ;

int
ahd_reset(struct ahd_softc *ahd, int reinit)
{
 u_int sxfrctl1;
 int wait;
 uint32_t cmd;






 ahd_pause(ahd);
 ahd_update_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 sxfrctl1 = ahd_inb(ahd, SXFRCTL1);

 cmd = ahd_pci_read_config(ahd->dev_softc, PCIR_COMMAND, 2);
 if ((ahd->bugs & AHD_PCIX_CHIPRST_BUG) != 0) {
  uint32_t mod_cmd;
  mod_cmd = cmd & ~(PCIM_CMD_PERRESPEN|PCIM_CMD_SERRESPEN);
  ahd_pci_write_config(ahd->dev_softc, PCIR_COMMAND,
         mod_cmd, 2);
 }
 ahd_outb(ahd, HCNTRL, CHIPRST | ahd->pause);







 wait = 1000;
 do {
  ahd_delay(1000);
 } while (--wait && !(ahd_inb(ahd, HCNTRL) & CHIPRSTACK));

 if (wait == 0) {
  printf("%s: WARNING - Failed chip reset!  "
         "Trying to initialize anyway.\n", ahd_name(ahd));
 }
 ahd_outb(ahd, HCNTRL, ahd->pause);

 if ((ahd->bugs & AHD_PCIX_CHIPRST_BUG) != 0) {




  ahd_pci_write_config(ahd->dev_softc, PCIR_STATUS + 1,
         0xFF, 1);
  ahd_pci_write_config(ahd->dev_softc, PCIR_COMMAND,
         cmd, 2);
 }







 ahd_known_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 ahd_outb(ahd, MODE_PTR,
   ahd_build_mode_state(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI));
 ahd_outb(ahd, SXFRCTL1, sxfrctl1|STPWEN);
 ahd_outb(ahd, SXFRCTL1, sxfrctl1);


 ahd->features &= ~AHD_WIDE;
 if ((ahd_inb(ahd, SBLKCTL) & SELWIDE) != 0)
  ahd->features |= AHD_WIDE;





 if (reinit != 0)
  ahd_chip_init(ahd);

 return (0);
}
