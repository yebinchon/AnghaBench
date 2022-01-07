
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb {int dummy; } ;
struct ahd_softc {int dummy; } ;


 int CAM_REQUEUE_REQ ;
 int ROLE_UNKNOWN ;
 int SCB_GET_CHANNEL (struct ahd_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 int SCB_LIST_NULL ;
 int ahd_platform_abort_scbs (struct ahd_softc*,int ,int ,int ,int ,int ,int ) ;

void
ahd_platform_freeze_devq(struct ahd_softc *ahd, struct scb *scb)
{
 ahd_platform_abort_scbs(ahd, SCB_GET_TARGET(ahd, scb),
    SCB_GET_CHANNEL(ahd, scb),
    SCB_GET_LUN(scb), SCB_LIST_NULL,
    ROLE_UNKNOWN, CAM_REQUEUE_REQ);
}
