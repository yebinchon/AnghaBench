
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scb {int flags; struct hardware_scb* hscb; } ;
struct initiator_status {int residual_datacnt; int residual_sgptr; } ;
struct TYPE_2__ {struct initiator_status istatus; } ;
struct hardware_scb {TYPE_1__ shared_data; int sgptr; } ;
struct ahd_softc {int dummy; } ;
struct ahd_dma_seg {int len; } ;


 int AHD_DMA_LAST_SEG ;
 int AHD_SG_LEN_MASK ;
 int AHD_SHOW_MISC ;
 int CAM_DATA_RUN_ERR ;
 int SCB_GET_TAG (struct scb*) ;
 int SCB_SENSE ;
 int SG_FULL_RESID ;
 int SG_LIST_NULL ;
 int SG_OVERRUN_RESID ;
 int SG_PTR_MASK ;
 int SG_STATUS_VALID ;
 int ahd_debug ;
 int ahd_freeze_devq (struct ahd_softc*,struct scb*) ;
 int ahd_freeze_scb (struct scb*) ;
 int ahd_get_transfer_length (struct scb*) ;
 int ahd_le32toh (int ) ;
 int ahd_print_path (struct ahd_softc*,struct scb*) ;
 int ahd_set_residual (struct scb*,int) ;
 int ahd_set_sense_residual (struct scb*,int) ;
 int ahd_set_transaction_status (struct scb*,int ) ;
 struct ahd_dma_seg* ahd_sg_bus_to_virt (struct ahd_softc*,struct scb*,int) ;
 int panic (char*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ahd_calc_residual(struct ahd_softc *ahd, struct scb *scb)
{
 struct hardware_scb *hscb;
 struct initiator_status *spkt;
 uint32_t sgptr;
 uint32_t resid_sgptr;
 uint32_t resid;
 hscb = scb->hscb;
 sgptr = ahd_le32toh(hscb->sgptr);
 if ((sgptr & SG_STATUS_VALID) == 0)

  return;
 sgptr &= ~SG_STATUS_VALID;

 if ((sgptr & SG_LIST_NULL) != 0)

  return;







 spkt = &hscb->shared_data.istatus;
 resid_sgptr = ahd_le32toh(spkt->residual_sgptr);
 if ((sgptr & SG_FULL_RESID) != 0) {

  resid = ahd_get_transfer_length(scb);
 } else if ((resid_sgptr & SG_LIST_NULL) != 0) {

  return;
 } else if ((resid_sgptr & SG_OVERRUN_RESID) != 0) {
  ahd_print_path(ahd, scb);
  printf("data overrun detected Tag == 0x%x.\n",
         SCB_GET_TAG(scb));
  ahd_freeze_devq(ahd, scb);
  ahd_set_transaction_status(scb, CAM_DATA_RUN_ERR);
  ahd_freeze_scb(scb);
  return;
 } else if ((resid_sgptr & ~SG_PTR_MASK) != 0) {
  panic("Bogus resid sgptr value 0x%x\n", resid_sgptr);

 } else {
  struct ahd_dma_seg *sg;





  resid = ahd_le32toh(spkt->residual_datacnt) & AHD_SG_LEN_MASK;
  sg = ahd_sg_bus_to_virt(ahd, scb, resid_sgptr & SG_PTR_MASK);


  sg--;






  while ((ahd_le32toh(sg->len) & AHD_DMA_LAST_SEG) == 0) {
   sg++;
   resid += ahd_le32toh(sg->len) & AHD_SG_LEN_MASK;
  }
 }
 if ((scb->flags & SCB_SENSE) == 0)
  ahd_set_residual(scb, resid);
 else
  ahd_set_sense_residual(scb, resid);
}
