
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_device {TYPE_1__* host; } ;
struct TYPE_6__ {int phase; } ;
struct scsi_cmnd {int result; int* cmnd; TYPE_3__ SCp; int (* scsi_done ) (struct scsi_cmnd*) ;struct scsi_device* device; } ;
struct fib {int dummy; } ;
struct aac_power_management {void* parm; void* cid; void* sub; void* type; void* command; } ;
struct TYPE_5__ {int SupportedOptions2; } ;
struct aac_dev {scalar_t__ in_reset; TYPE_2__ supplement_adapter_info; } ;
typedef int fib_callback ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 int AAC_OPTION_POWER_MANAGEMENT ;
 int AAC_OWNER_FIRMWARE ;
 int COMMAND_COMPLETE ;
 int CT_PM_START_UNIT ;
 int CT_PM_STOP_UNIT ;
 int CT_PM_UNIT_IMMEDIATE ;
 int CT_POWER_MANAGEMENT ;
 int ContainerCommand ;
 int DID_OK ;
 int EINPROGRESS ;
 int FsaNormal ;
 int SAM_STAT_GOOD ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int VM_ContainerConfig ;
 struct fib* aac_fib_alloc (struct aac_dev*) ;
 int aac_fib_complete (struct fib*) ;
 int aac_fib_free (struct fib*) ;
 int aac_fib_init (struct fib*) ;
 int aac_fib_send (int ,struct fib*,int,int ,int ,int,int ,void*) ;
 scalar_t__ aac_start_stop_callback ;
 void* cpu_to_le32 (int ) ;
 struct aac_power_management* fib_data (struct fib*) ;
 int sdev_id (struct scsi_device*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int aac_start_stop(struct scsi_cmnd *scsicmd)
{
 int status;
 struct fib *cmd_fibcontext;
 struct aac_power_management *pmcmd;
 struct scsi_device *sdev = scsicmd->device;
 struct aac_dev *aac = (struct aac_dev *)sdev->host->hostdata;

 if (!(aac->supplement_adapter_info.SupportedOptions2 &
       AAC_OPTION_POWER_MANAGEMENT)) {
  scsicmd->result = DID_OK << 16 | COMMAND_COMPLETE << 8 |
      SAM_STAT_GOOD;
  scsicmd->scsi_done(scsicmd);
  return 0;
 }

 if (aac->in_reset)
  return SCSI_MLQUEUE_HOST_BUSY;




 cmd_fibcontext = aac_fib_alloc(aac);
 if (!cmd_fibcontext)
  return SCSI_MLQUEUE_HOST_BUSY;

 aac_fib_init(cmd_fibcontext);

 pmcmd = fib_data(cmd_fibcontext);
 pmcmd->command = cpu_to_le32(VM_ContainerConfig);
 pmcmd->type = cpu_to_le32(CT_POWER_MANAGEMENT);

 pmcmd->sub = (scsicmd->cmnd[4] & 1) ?
  cpu_to_le32(CT_PM_START_UNIT) : cpu_to_le32(CT_PM_STOP_UNIT);
 pmcmd->cid = cpu_to_le32(sdev_id(sdev));
 pmcmd->parm = (scsicmd->cmnd[1] & 1) ?
  cpu_to_le32(CT_PM_UNIT_IMMEDIATE) : 0;




 status = aac_fib_send(ContainerCommand,
    cmd_fibcontext,
    sizeof(struct aac_power_management),
    FsaNormal,
    0, 1,
    (fib_callback)aac_start_stop_callback,
    (void *)scsicmd);




 if (status == -EINPROGRESS) {
  scsicmd->SCp.phase = AAC_OWNER_FIRMWARE;
  return 0;
 }

 aac_fib_complete(cmd_fibcontext);
 aac_fib_free(cmd_fibcontext);
 return SCSI_MLQUEUE_HOST_BUSY;
}
