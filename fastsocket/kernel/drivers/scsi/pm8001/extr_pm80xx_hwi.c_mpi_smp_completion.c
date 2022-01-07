
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct task_status_struct {void* stat; void* resp; void* open_rej_reason; int residual; } ;
struct smp_completion_resp {char* _r_a; int param; int tag; int status; } ;
struct TYPE_2__ {int smp_resp; } ;
struct sas_task {int task_state_flags; int (* task_done ) (struct sas_task*) ;int task_state_lock; TYPE_1__ smp_task; int dev; int lldd_task; struct task_status_struct task_status; } ;
struct pm8001_hba_info {int smp_exp_mode; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {int running_req; } ;
struct pm8001_ccb_info {struct pm8001_device* device; struct sas_task* task; } ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_IO_DBG (struct pm8001_hba_info*,int ) ;
 void* SAM_STAT_BUSY ;
 void* SAM_STAT_GOOD ;
 void* SAS_ABORTED_TASK ;
 void* SAS_DATA_OVERRUN ;
 void* SAS_DEV_NO_RESPONSE ;
 void* SAS_OPEN_REJECT ;
 void* SAS_OREJ_BAD_DEST ;
 void* SAS_OREJ_CONN_RATE ;
 void* SAS_OREJ_RSVD_CONT0 ;
 void* SAS_OREJ_RSVD_RETRY ;
 void* SAS_OREJ_UNKNOWN ;
 void* SAS_OREJ_WRONG_DEST ;
 void* SAS_PHY_DOWN ;
 void* SAS_QUEUE_FULL ;
 int SAS_TASK_AT_INITIATOR ;
 void* SAS_TASK_COMPLETE ;
 int SAS_TASK_STATE_ABORTED ;
 int SAS_TASK_STATE_DONE ;
 int SAS_TASK_STATE_PENDING ;
 int SMP_DIRECT ;
 int cpu_to_le64 (int ) ;
 size_t le32_to_cpu (int ) ;
 int mb () ;
 scalar_t__ phys_to_virt (int ) ;
 int pm8001_ccb_task_free (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,size_t) ;
 int pm8001_handle_event (struct pm8001_hba_info*,struct pm8001_device*,int const) ;
 int pm8001_printk (char*,...) ;
 int sg_dma_address (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sas_task*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
mpi_smp_completion(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 u32 param, i;
 struct sas_task *t;
 struct pm8001_ccb_info *ccb;
 unsigned long flags;
 u32 status;
 u32 tag;
 struct smp_completion_resp *psmpPayload;
 struct task_status_struct *ts;
 struct pm8001_device *pm8001_dev;
 char *pdma_respaddr = ((void*)0);

 psmpPayload = (struct smp_completion_resp *)(piomb + 4);
 status = le32_to_cpu(psmpPayload->status);
 tag = le32_to_cpu(psmpPayload->tag);

 ccb = &pm8001_ha->ccb_info[tag];
 param = le32_to_cpu(psmpPayload->param);
 t = ccb->task;
 ts = &t->task_status;
 pm8001_dev = ccb->device;
 if (status)
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("smp IO status 0x%x\n", status));
 if (unlikely(!t || !t->lldd_task || !t->dev))
  return;

 switch (status) {

 case 133:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk("IO_SUCCESS\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAM_STAT_GOOD;
  if (pm8001_dev)
   pm8001_dev->running_req--;
  if (pm8001_ha->smp_exp_mode == SMP_DIRECT) {
   PM8001_IO_DBG(pm8001_ha,
    pm8001_printk("DIRECT RESPONSE Length:%d\n",
      param));
   pdma_respaddr = (char *)(phys_to_virt(cpu_to_le64
      ((u64)sg_dma_address
      (&t->smp_task.smp_resp))));
   for (i = 0; i < param; i++) {
    *(pdma_respaddr+i) = psmpPayload->_r_a[i];
    PM8001_IO_DBG(pm8001_ha, pm8001_printk(
     "SMP Byte%d DMA data 0x%x psmp 0x%x\n",
     i, *(pdma_respaddr+i),
     psmpPayload->_r_a[i]));
   }
  }
  break;
 case 153:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_ABORTED IOMB\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_ABORTED_TASK;
  if (pm8001_dev)
   pm8001_dev->running_req--;
  break;
 case 135:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk("IO_UNDERFLOW\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DATA_OVERRUN;
  ts->residual = 0;
  if (pm8001_dev)
   pm8001_dev->running_req--;
  break;
 case 148:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk("IO_NO_DEVICE\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_PHY_DOWN;
  break;
 case 150:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_ERROR_HW_TIMEOUT\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAM_STAT_BUSY;
  break;
 case 132:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_BREAK\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAM_STAT_BUSY;
  break;
 case 131:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_PHY_NOT_READY\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAM_STAT_BUSY;
  break;
 case 138:
  PM8001_IO_DBG(pm8001_ha,
  pm8001_printk("IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_UNKNOWN;
  break;
 case 136:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_ZONE_VIOLATION\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_UNKNOWN;
  break;
 case 146:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_BREAK\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_CONT0;
  break;
 case 143:
 case 129:
 case 140:
 case 142:
 case 141:
 case 139:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_UNKNOWN;
  pm8001_handle_event(pm8001_ha,
    pm8001_dev,
    143);
  break;
 case 147:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_BAD_DESTINATION\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_BAD_DEST;
  break;
 case 145:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk( "IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\n"));

  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_CONN_RATE;
  break;
 case 137:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_WRONG_DESTINATION\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_WRONG_DEST;
  break;
 case 130:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_RX_FRAME\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DEV_NO_RESPONSE;
  break;
 case 128:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_OPEN_RETRY_TIMEOUT\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 case 149:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_ERROR_INTERNAL_SMP_RESOURCE\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_QUEUE_FULL;
  break;
 case 134:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_PORT_IN_RESET\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 case 151:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_DS_NON_OPERATIONAL\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DEV_NO_RESPONSE;
  break;
 case 152:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_DS_IN_RECOVERY\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 case 144:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 default:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("Unknown status 0x%x\n", status));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DEV_NO_RESPONSE;

  break;
 }
 spin_lock_irqsave(&t->task_state_lock, flags);
 t->task_state_flags &= ~SAS_TASK_STATE_PENDING;
 t->task_state_flags &= ~SAS_TASK_AT_INITIATOR;
 t->task_state_flags |= SAS_TASK_STATE_DONE;
 if (unlikely((t->task_state_flags & SAS_TASK_STATE_ABORTED))) {
  spin_unlock_irqrestore(&t->task_state_lock, flags);
  PM8001_FAIL_DBG(pm8001_ha, pm8001_printk(
   "task 0x%p done with io_status 0x%x resp 0x%x"
   "stat 0x%x but aborted by upper layer!\n",
   t, status, ts->resp, ts->stat));
  pm8001_ccb_task_free(pm8001_ha, t, ccb, tag);
 } else {
  spin_unlock_irqrestore(&t->task_state_lock, flags);
  pm8001_ccb_task_free(pm8001_ha, t, ccb, tag);
  mb();
  t->task_done(t);
 }
}
