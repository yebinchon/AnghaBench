
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;
struct ahd_devinfo {int dummy; } ;
typedef scalar_t__ role_t ;
typedef int ahd_mode_state ;


 int AHD_MODE_SCSI ;
 int CMDPHASE_PENDING ;
 int IOWNID ;
 int OID ;
 scalar_t__ ROLE_INITIATOR ;
 scalar_t__ ROLE_TARGET ;
 int SAVED_LUN ;
 int SAVED_SCSIID ;
 int SCSIID_CHANNEL (struct ahd_softc*,int) ;
 int SCSIID_TARGET (struct ahd_softc*,int) ;
 int SEQ_FLAGS ;
 int SSTAT0 ;
 int TARGET ;
 int TARGIDIN ;
 int TOWNID ;
 int ahd_compile_devinfo (struct ahd_devinfo*,int,int ,int,int ,scalar_t__) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;

__attribute__((used)) static void
ahd_fetch_devinfo(struct ahd_softc *ahd, struct ahd_devinfo *devinfo)
{
 ahd_mode_state saved_modes;
 u_int saved_scsiid;
 role_t role;
 int our_id;

 saved_modes = ahd_save_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);

 if (ahd_inb(ahd, SSTAT0) & TARGET)
  role = ROLE_TARGET;
 else
  role = ROLE_INITIATOR;

 if (role == ROLE_TARGET
  && (ahd_inb(ahd, SEQ_FLAGS) & CMDPHASE_PENDING) != 0) {

  our_id = ahd_inb(ahd, TARGIDIN) & OID;
 } else if (role == ROLE_TARGET)
  our_id = ahd_inb(ahd, TOWNID);
 else
  our_id = ahd_inb(ahd, IOWNID);

 saved_scsiid = ahd_inb(ahd, SAVED_SCSIID);
 ahd_compile_devinfo(devinfo,
       our_id,
       SCSIID_TARGET(ahd, saved_scsiid),
       ahd_inb(ahd, SAVED_LUN),
       SCSIID_CHANNEL(ahd, saved_scsiid),
       role);
 ahd_restore_modes(ahd, saved_modes);
}
