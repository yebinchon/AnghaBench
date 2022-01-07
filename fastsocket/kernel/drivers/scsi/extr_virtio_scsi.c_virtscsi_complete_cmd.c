
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtio_scsi_cmd_resp {int response; scalar_t__ sense_len; int sense; int resid; int status; } ;
struct TYPE_3__ {struct virtio_scsi_cmd_resp cmd; } ;
struct virtio_scsi_cmd {TYPE_1__ resp; struct scsi_cmnd* sc; } ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;scalar_t__ sense_buffer; int result; TYPE_2__* device; } ;
struct TYPE_4__ {int sdev_gendev; } ;


 int DID_ABORT ;
 int DID_BAD_TARGET ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_NEXUS_FAILURE ;
 int DID_OK ;
 int DID_RESET ;
 int DID_TARGET_FAILURE ;
 int DID_TRANSPORT_DISRUPTED ;
 int DRIVER_SENSE ;
 int KERN_WARNING ;
 scalar_t__ VIRTIO_SCSI_SENSE_SIZE ;
 int WARN_ON (int) ;
 int dev_dbg (int *,char*,struct scsi_cmnd*,int,int ,scalar_t__) ;
 int memcpy (scalar_t__,int ,int ) ;
 int mempool_free (struct virtio_scsi_cmd*,int ) ;
 int min_t (int ,scalar_t__,scalar_t__) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int) ;
 int set_driver_byte (struct scsi_cmnd*,int ) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;
 int stub1 (struct scsi_cmnd*) ;
 int u32 ;
 int virtscsi_cmd_pool ;
 int virtscsi_compute_resid (struct scsi_cmnd*,int ) ;

__attribute__((used)) static void virtscsi_complete_cmd(void *buf)
{
 struct virtio_scsi_cmd *cmd = buf;
 struct scsi_cmnd *sc = cmd->sc;
 struct virtio_scsi_cmd_resp *resp = &cmd->resp.cmd;

 dev_dbg(&sc->device->sdev_gendev,
  "cmd %p response %u status %#02x sense_len %u\n",
  sc, resp->response, resp->status, resp->sense_len);

 sc->result = resp->status;
 virtscsi_compute_resid(sc, resp->resid);
 switch (resp->response) {
 case 132:
  set_host_byte(sc, DID_OK);
  break;
 case 131:
  set_host_byte(sc, DID_ERROR);
  break;
 case 137:
  set_host_byte(sc, DID_ABORT);
  break;
 case 136:
  set_host_byte(sc, DID_BAD_TARGET);
  break;
 case 130:
  set_host_byte(sc, DID_RESET);
  break;
 case 135:
  set_host_byte(sc, DID_BUS_BUSY);
  break;
 case 128:
  set_host_byte(sc, DID_TRANSPORT_DISRUPTED);
  break;
 case 129:
  set_host_byte(sc, DID_TARGET_FAILURE);
  break;
 case 133:
  set_host_byte(sc, DID_NEXUS_FAILURE);
  break;
 default:
  scmd_printk(KERN_WARNING, sc, "Unknown response %d",
       resp->response);

 case 134:
  set_host_byte(sc, DID_ERROR);
  break;
 }

 WARN_ON(resp->sense_len > VIRTIO_SCSI_SENSE_SIZE);
 if (sc->sense_buffer) {
  memcpy(sc->sense_buffer, resp->sense,
         min_t(u32, resp->sense_len, VIRTIO_SCSI_SENSE_SIZE));
  if (resp->sense_len)
   set_driver_byte(sc, DRIVER_SENSE);
 }

 mempool_free(cmd, virtscsi_cmd_pool);
 sc->scsi_done(sc);
}
