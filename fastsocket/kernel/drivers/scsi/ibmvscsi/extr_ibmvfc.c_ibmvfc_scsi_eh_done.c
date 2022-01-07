
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct ibmvfc_event {scalar_t__ eh_comp; struct scsi_cmnd* cmnd; } ;


 int complete (scalar_t__) ;
 int ibmvfc_free_event (struct ibmvfc_event*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void ibmvfc_scsi_eh_done(struct ibmvfc_event *evt)
{
 struct scsi_cmnd *cmnd = evt->cmnd;

 if (cmnd) {
  scsi_dma_unmap(cmnd);
  cmnd->scsi_done(cmnd);
 }

 if (evt->eh_comp)
  complete(evt->eh_comp);

 ibmvfc_free_event(evt);
}
