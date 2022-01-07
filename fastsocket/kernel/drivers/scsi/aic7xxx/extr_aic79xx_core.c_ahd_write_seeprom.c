
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_SCSI_MSK ;
 int EINVAL ;
 int ENOENT ;
 int SEEADR ;
 int SEECTL ;
 int SEEDAT ;
 int SEEOP_EWDS ;
 int SEEOP_EWDS_ADDR ;
 int SEEOP_EWEN ;
 int SEEOP_EWEN_ADDR ;
 int SEEOP_WRITE ;
 int SEESTART ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_outw (struct ahd_softc*,int ,int ) ;
 int ahd_wait_seeprom (struct ahd_softc*) ;

int
ahd_write_seeprom(struct ahd_softc *ahd, uint16_t *buf,
    u_int start_addr, u_int count)
{
 u_int cur_addr;
 u_int end_addr;
 int error;
 int retval;

 AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
 error = ENOENT;


 ahd_outb(ahd, SEEADR, SEEOP_EWEN_ADDR);
 ahd_outb(ahd, SEECTL, SEEOP_EWEN | SEESTART);
 error = ahd_wait_seeprom(ahd);
 if (error)
  return (error);





 retval = EINVAL;
 end_addr = start_addr + count;
 for (cur_addr = start_addr; cur_addr < end_addr; cur_addr++) {
  ahd_outw(ahd, SEEDAT, *buf++);
  ahd_outb(ahd, SEEADR, cur_addr);
  ahd_outb(ahd, SEECTL, SEEOP_WRITE | SEESTART);

  retval = ahd_wait_seeprom(ahd);
  if (retval)
   break;
 }




 ahd_outb(ahd, SEEADR, SEEOP_EWDS_ADDR);
 ahd_outb(ahd, SEECTL, SEEOP_EWDS | SEESTART);
 error = ahd_wait_seeprom(ahd);
 if (error)
  return (error);
 return (retval);
}
