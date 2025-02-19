
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vmscsi_request {scalar_t__ data_in; scalar_t__ srb_status; scalar_t__ data_transfer_length; scalar_t__ scsi_status; } ;
struct storvsc_device {struct Scsi_Host* host; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {struct vmscsi_request vm_srb; } ;
struct storvsc_cmd_request {TYPE_3__ data_buffer; scalar_t__ bounce_sgl_count; int bounce_sgl; TYPE_2__ vstor_packet; struct scsi_cmnd* cmd; } ;
struct stor_mem_pools {int request_mempool; } ;
struct scsi_sense_hdr {int ascq; int asc; } ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int * host_scribble; int sense_buffer; scalar_t__ result; TYPE_1__* device; } ;
struct hv_host_device {struct hv_device* dev; } ;
struct hv_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {struct stor_mem_pools* hostdata; int host; } ;


 scalar_t__ READ_TYPE ;
 int SCSI_SENSE_BUFFERSIZE ;
 scalar_t__ SRB_STATUS_SUCCESS ;
 int copy_from_bounce_buffer (int ,int ,int ,scalar_t__) ;
 int destroy_bounce_buffer (int ,scalar_t__) ;
 struct storvsc_device* get_in_stor_device (struct hv_device*) ;
 int mempool_free (struct storvsc_cmd_request*,int ) ;
 scalar_t__ scsi_normalize_sense (int ,int ,struct scsi_sense_hdr*) ;
 int scsi_print_sense_hdr (char*,struct scsi_sense_hdr*) ;
 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 struct hv_host_device* shost_priv (int ) ;
 int storvsc_handle_error (struct vmscsi_request*,struct scsi_cmnd*,struct Scsi_Host*,int ,int ) ;

__attribute__((used)) static void storvsc_command_completion(struct storvsc_cmd_request *cmd_request)
{
 struct scsi_cmnd *scmnd = cmd_request->cmd;
 struct hv_host_device *host_dev = shost_priv(scmnd->device->host);
 void (*scsi_done_fn)(struct scsi_cmnd *);
 struct scsi_sense_hdr sense_hdr;
 struct vmscsi_request *vm_srb;
 struct stor_mem_pools *memp = scmnd->device->hostdata;
 struct Scsi_Host *host;
 struct storvsc_device *stor_dev;
 struct hv_device *dev = host_dev->dev;

 stor_dev = get_in_stor_device(dev);
 host = stor_dev->host;

 vm_srb = &cmd_request->vstor_packet.vm_srb;
 if (cmd_request->bounce_sgl_count) {
  if (vm_srb->data_in == READ_TYPE)
   copy_from_bounce_buffer(scsi_sglist(scmnd),
     cmd_request->bounce_sgl,
     scsi_sg_count(scmnd),
     cmd_request->bounce_sgl_count);
  destroy_bounce_buffer(cmd_request->bounce_sgl,
     cmd_request->bounce_sgl_count);
 }

 scmnd->result = vm_srb->scsi_status;

 if (scmnd->result) {
  if (scsi_normalize_sense(scmnd->sense_buffer,
    SCSI_SENSE_BUFFERSIZE, &sense_hdr))
   scsi_print_sense_hdr("storvsc", &sense_hdr);
 }

 if (vm_srb->srb_status != SRB_STATUS_SUCCESS)
  storvsc_handle_error(vm_srb, scmnd, host, sense_hdr.asc,
      sense_hdr.ascq);

 scsi_set_resid(scmnd,
  cmd_request->data_buffer.len -
  vm_srb->data_transfer_length);

 scsi_done_fn = scmnd->scsi_done;

 scmnd->host_scribble = ((void*)0);
 scmnd->scsi_done = ((void*)0);

 scsi_done_fn(scmnd);

 mempool_free(cmd_request, memp->request_mempool);
}
