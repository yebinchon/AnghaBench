
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb {int dummy; } ;
struct ahc_softc {int dummy; } ;


 int CAM_REQUEUE_REQ ;
 int ROLE_UNKNOWN ;
 int SCB_GET_CHANNEL (struct ahc_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TARGET (struct ahc_softc*,struct scb*) ;
 int SCB_LIST_NULL ;
 int ahc_platform_abort_scbs (struct ahc_softc*,int ,int ,int ,int ,int ,int ) ;

void
ahc_platform_freeze_devq(struct ahc_softc *ahc, struct scb *scb)
{
 ahc_platform_abort_scbs(ahc, SCB_GET_TARGET(ahc, scb),
    SCB_GET_CHANNEL(ahc, scb),
    SCB_GET_LUN(scb), SCB_LIST_NULL,
    ROLE_UNKNOWN, CAM_REQUEUE_REQ);
}
