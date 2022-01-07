
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_SCSI_MSK ;
 int BRDCTL ;
 int BRDDAT ;
 int BRDEN ;
 int BRDRW ;
 int ahd_flush_device_writes (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_wait_flexport (struct ahd_softc*) ;
 int panic (char*) ;

int
ahd_read_flexport(struct ahd_softc *ahd, u_int addr, uint8_t *value)
{
 int error;

 AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
 if (addr > 7)
  panic("ahd_read_flexport: address out of range");
 ahd_outb(ahd, BRDCTL, BRDRW|BRDEN|(addr << 3));
 error = ahd_wait_flexport(ahd);
 if (error != 0)
  return (error);
 *value = ahd_inb(ahd, BRDDAT);
 ahd_outb(ahd, BRDCTL, 0);
 ahd_flush_device_writes(ahd);
 return (0);
}
