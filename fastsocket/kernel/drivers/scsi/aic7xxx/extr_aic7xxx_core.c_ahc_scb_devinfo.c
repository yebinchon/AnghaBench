
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scb {int flags; TYPE_1__* hscb; } ;
struct ahc_softc {int dummy; } ;
struct ahc_devinfo {int dummy; } ;
typedef int role_t ;
struct TYPE_2__ {int scsiid; } ;


 int ROLE_INITIATOR ;
 int ROLE_TARGET ;
 int SCB_GET_CHANNEL (struct ahc_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TARGET (struct ahc_softc*,struct scb*) ;
 int SCB_TARGET_SCB ;
 int SCSIID_OUR_ID (int ) ;
 int ahc_compile_devinfo (struct ahc_devinfo*,int,int ,int ,int ,int ) ;

__attribute__((used)) static void
ahc_scb_devinfo(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
  struct scb *scb)
{
 role_t role;
 int our_id;

 our_id = SCSIID_OUR_ID(scb->hscb->scsiid);
 role = ROLE_INITIATOR;
 if ((scb->flags & SCB_TARGET_SCB) != 0)
  role = ROLE_TARGET;
 ahc_compile_devinfo(devinfo, our_id, SCB_GET_TARGET(ahc, scb),
       SCB_GET_LUN(scb), SCB_GET_CHANNEL(ahc, scb), role);
}
