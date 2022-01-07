
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_SCSI_MSK ;
 int EINVAL ;
 int SEEADR ;
 int SEECTL ;
 scalar_t__ SEEDAT ;
 scalar_t__ SEEOP_READ ;
 scalar_t__ SEESTART ;
 void* ahd_inb (struct ahd_softc*,scalar_t__) ;
 int ahd_inw (struct ahd_softc*,scalar_t__) ;
 int ahd_outb (struct ahd_softc*,int ,scalar_t__) ;
 int ahd_wait_seeprom (struct ahd_softc*) ;

int
ahd_read_seeprom(struct ahd_softc *ahd, uint16_t *buf,
   u_int start_addr, u_int count, int bytestream)
{
 u_int cur_addr;
 u_int end_addr;
 int error;





 error = EINVAL;
 AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
 end_addr = start_addr + count;
 for (cur_addr = start_addr; cur_addr < end_addr; cur_addr++) {

  ahd_outb(ahd, SEEADR, cur_addr);
  ahd_outb(ahd, SEECTL, SEEOP_READ | SEESTART);

  error = ahd_wait_seeprom(ahd);
  if (error)
   break;
  if (bytestream != 0) {
   uint8_t *bytestream_ptr;

   bytestream_ptr = (uint8_t *)buf;
   *bytestream_ptr++ = ahd_inb(ahd, SEEDAT);
   *bytestream_ptr = ahd_inb(ahd, SEEDAT+1);
  } else {



   *buf = ahd_inw(ahd, SEEDAT);
  }
  buf++;
 }
 return (error);
}
