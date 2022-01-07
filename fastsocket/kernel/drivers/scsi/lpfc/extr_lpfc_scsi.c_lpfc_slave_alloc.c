
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_device {int hostdata; TYPE_1__* host; } ;
struct lpfc_vport {int cfg_lun_queue_depth; struct lpfc_hba* phba; } ;
struct lpfc_hba {int total_scsi_bufs; int cfg_hba_queue_depth; int sdev_cnt; } ;
struct fc_rport {int dd_data; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 int ENXIO ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int LOG_FCP ;
 int LPFC_DISC_IOCB_BUFF_COUNT ;
 int atomic_inc_return (int *) ;
 scalar_t__ fc_remote_port_chkready (struct fc_rport*) ;
 int lpfc_new_scsi_buf (struct lpfc_vport*,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,...) ;
 int scsi_target (struct scsi_device*) ;
 struct fc_rport* starget_to_rport (int ) ;

__attribute__((used)) static int
lpfc_slave_alloc(struct scsi_device *sdev)
{
 struct lpfc_vport *vport = (struct lpfc_vport *) sdev->host->hostdata;
 struct lpfc_hba *phba = vport->phba;
 struct fc_rport *rport = starget_to_rport(scsi_target(sdev));
 uint32_t total = 0;
 uint32_t num_to_alloc = 0;
 int num_allocated = 0;
 uint32_t sdev_cnt;

 if (!rport || fc_remote_port_chkready(rport))
  return -ENXIO;

 sdev->hostdata = rport->dd_data;
 sdev_cnt = atomic_inc_return(&phba->sdev_cnt);
 total = phba->total_scsi_bufs;
 num_to_alloc = vport->cfg_lun_queue_depth + 2;


 if ((sdev_cnt * (vport->cfg_lun_queue_depth + 2)) < total)
  return 0;


 if (total >= phba->cfg_hba_queue_depth - LPFC_DISC_IOCB_BUFF_COUNT ) {
  lpfc_printf_vlog(vport, KERN_WARNING, LOG_FCP,
     "0704 At limitation of %d preallocated "
     "command buffers\n", total);
  return 0;

 } else if (total + num_to_alloc >
  phba->cfg_hba_queue_depth - LPFC_DISC_IOCB_BUFF_COUNT ) {
  lpfc_printf_vlog(vport, KERN_WARNING, LOG_FCP,
     "0705 Allocation request of %d "
     "command buffers will exceed max of %d.  "
     "Reducing allocation request to %d.\n",
     num_to_alloc, phba->cfg_hba_queue_depth,
     (phba->cfg_hba_queue_depth - total));
  num_to_alloc = phba->cfg_hba_queue_depth - total;
 }
 num_allocated = lpfc_new_scsi_buf(vport, num_to_alloc);
 if (num_to_alloc != num_allocated) {
   lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
      "0708 Allocation request of %d "
      "command buffers did not succeed.  "
      "Allocated %d buffers.\n",
      num_to_alloc, num_allocated);
 }
 if (num_allocated > 0)
  phba->total_scsi_bufs += num_allocated;
 return 0;
}
