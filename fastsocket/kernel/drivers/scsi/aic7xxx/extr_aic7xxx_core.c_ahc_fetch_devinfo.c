
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_softc {int features; } ;
struct ahc_devinfo {int dummy; } ;
typedef scalar_t__ role_t ;


 int AHC_MULTI_TID ;
 int AHC_ULTRA2 ;
 int CMDPHASE_PENDING ;
 int NO_DISCONNECT ;
 int OID ;
 scalar_t__ ROLE_INITIATOR ;
 scalar_t__ ROLE_TARGET ;
 int SAVED_LUN ;
 int SAVED_SCSIID ;
 int SCSIID ;
 int SCSIID_CHANNEL (struct ahc_softc*,int) ;
 int SCSIID_TARGET (struct ahc_softc*,int) ;
 int SCSIID_ULTRA2 ;
 int SEQ_FLAGS ;
 int SSTAT0 ;
 int TARGET ;
 int TARGIDIN ;
 int TARG_CMD_PENDING ;
 int ahc_compile_devinfo (struct ahc_devinfo*,int,int ,int,int ,scalar_t__) ;
 int ahc_inb (struct ahc_softc*,int ) ;

__attribute__((used)) static void
ahc_fetch_devinfo(struct ahc_softc *ahc, struct ahc_devinfo *devinfo)
{
 u_int saved_scsiid;
 role_t role;
 int our_id;

 if (ahc_inb(ahc, SSTAT0) & TARGET)
  role = ROLE_TARGET;
 else
  role = ROLE_INITIATOR;

 if (role == ROLE_TARGET
  && (ahc->features & AHC_MULTI_TID) != 0
  && (ahc_inb(ahc, SEQ_FLAGS)
     & (CMDPHASE_PENDING|TARG_CMD_PENDING|NO_DISCONNECT)) != 0) {

  our_id = ahc_inb(ahc, TARGIDIN) & OID;
 } else if ((ahc->features & AHC_ULTRA2) != 0)
  our_id = ahc_inb(ahc, SCSIID_ULTRA2) & OID;
 else
  our_id = ahc_inb(ahc, SCSIID) & OID;

 saved_scsiid = ahc_inb(ahc, SAVED_SCSIID);
 ahc_compile_devinfo(devinfo,
       our_id,
       SCSIID_TARGET(ahc, saved_scsiid),
       ahc_inb(ahc, SAVED_LUN),
       SCSIID_CHANNEL(ahc, saved_scsiid),
       role);
}
