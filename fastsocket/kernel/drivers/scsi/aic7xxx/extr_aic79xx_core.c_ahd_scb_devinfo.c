
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scb {TYPE_1__* hscb; } ;
struct ahd_softc {int dummy; } ;
struct ahd_devinfo {int dummy; } ;
typedef int role_t ;
struct TYPE_2__ {int control; int scsiid; } ;


 int ROLE_INITIATOR ;
 int ROLE_TARGET ;
 int SCB_GET_CHANNEL (struct ahd_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 int SCSIID_OUR_ID (int ) ;
 int TARGET_SCB ;
 int ahd_compile_devinfo (struct ahd_devinfo*,int,int ,int ,int ,int ) ;

__attribute__((used)) static void
ahd_scb_devinfo(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
  struct scb *scb)
{
 role_t role;
 int our_id;

 our_id = SCSIID_OUR_ID(scb->hscb->scsiid);
 role = ROLE_INITIATOR;
 if ((scb->hscb->control & TARGET_SCB) != 0)
  role = ROLE_TARGET;
 ahd_compile_devinfo(devinfo, our_id, SCB_GET_TARGET(ahd, scb),
       SCB_GET_LUN(scb), SCB_GET_CHANNEL(ahd, scb), role);
}
