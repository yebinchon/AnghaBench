
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
struct qla_hw_data {int s_dma_pool; TYPE_5__* pdev; } ;
struct TYPE_18__ {int param1; int param0; int id; } ;
struct TYPE_23__ {int start_addr; } ;
struct TYPE_24__ {int context; int type; } ;
struct TYPE_25__ {TYPE_1__ config; TYPE_6__ mem; TYPE_7__ info; } ;
struct TYPE_26__ {TYPE_8__ u; } ;
struct TYPE_16__ {int cmd; int len; TYPE_9__ mgmtp; } ;
struct qla_bsg_a84_mgmt {TYPE_10__ mgmt; } ;
struct fc_bsg_request {int dummy; } ;
struct fc_bsg_reply {int dummy; } ;
struct TYPE_21__ {scalar_t__ sg_cnt; scalar_t__ payload_len; int sg_list; } ;
struct TYPE_20__ {scalar_t__ sg_cnt; scalar_t__ payload_len; int sg_list; } ;
struct fc_bsg_job {int reply_len; int (* job_done ) (struct fc_bsg_job*) ;TYPE_4__ reply_payload; TYPE_3__ request_payload; TYPE_2__* reply; scalar_t__ request; struct Scsi_Host* shost; } ;
struct access_chip_84xx {int entry_count; void* dseg_length; void** dseg_address; void* dseg_count; void* total_byte_cnt; void* parameter3; void* parameter2; void* parameter1; void* options; int entry_type; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_17__ {struct qla_hw_data* hw; } ;
typedef TYPE_11__ scsi_qla_host_t ;
typedef int dma_addr_t ;
struct TYPE_22__ {int dev; } ;
struct TYPE_19__ {scalar_t__ reply_payload_rcv_len; int result; } ;


 int ACCESS_CHIP_IOCB_TYPE ;
 int ACO_CHANGE_CONFIG_PARAM ;
 int ACO_DUMP_MEMORY ;
 int ACO_LOAD_MEMORY ;
 int ACO_REQUEST_INFO ;
 int DID_ERROR ;
 int DID_OK ;
 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_NONE ;
 scalar_t__ DMA_TO_DEVICE ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_QLA84XX (struct qla_hw_data*) ;
 int LSD (int ) ;
 int MSD (int ) ;




 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 void* dma_alloc_coherent (int *,scalar_t__,int *,int ) ;
 int dma_free_coherent (int *,scalar_t__,void*,int ) ;
 scalar_t__ dma_map_sg (int *,int ,scalar_t__,scalar_t__) ;
 struct access_chip_84xx* dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,struct access_chip_84xx*,int ) ;
 int dma_unmap_sg (int *,int ,scalar_t__,scalar_t__) ;
 int memset (struct access_chip_84xx*,int ,int) ;
 int ql_dbg (int ,TYPE_11__*,int,char*) ;
 int ql_dbg_user ;
 int ql_log (int ,TYPE_11__*,int,char*,...) ;
 int ql_log_warn ;
 int qla2x00_issue_iocb (TYPE_11__*,struct access_chip_84xx*,int ,int ) ;
 int sg_copy_from_buffer (int ,scalar_t__,void*,scalar_t__) ;
 int sg_copy_to_buffer (int ,scalar_t__,void*,scalar_t__) ;
 TYPE_11__* shost_priv (struct Scsi_Host*) ;
 int stub1 (struct fc_bsg_job*) ;

__attribute__((used)) static int
qla84xx_mgmt_cmd(struct fc_bsg_job *bsg_job)
{
 struct Scsi_Host *host = bsg_job->shost;
 scsi_qla_host_t *vha = shost_priv(host);
 struct qla_hw_data *ha = vha->hw;
 struct access_chip_84xx *mn = ((void*)0);
 dma_addr_t mn_dma, mgmt_dma;
 void *mgmt_b = ((void*)0);
 int rval = 0;
 struct qla_bsg_a84_mgmt *ql84_mgmt;
 uint32_t sg_cnt;
 uint32_t data_len = 0;
 uint32_t dma_direction = DMA_NONE;

 if (!IS_QLA84XX(ha)) {
  ql_log(ql_log_warn, vha, 0x703a,
      "Not 84xx, exiting.\n");
  return -EINVAL;
 }

 ql84_mgmt = (struct qla_bsg_a84_mgmt *)((char *)bsg_job->request +
  sizeof(struct fc_bsg_request));
 if (!ql84_mgmt) {
  ql_log(ql_log_warn, vha, 0x703b,
      "MGMT header not provided, exiting.\n");
  return -EINVAL;
 }

 mn = dma_pool_alloc(ha->s_dma_pool, GFP_KERNEL, &mn_dma);
 if (!mn) {
  ql_log(ql_log_warn, vha, 0x703c,
      "DMA alloc failed for fw buffer.\n");
  return -ENOMEM;
 }

 memset(mn, 0, sizeof(struct access_chip_84xx));
 mn->entry_type = ACCESS_CHIP_IOCB_TYPE;
 mn->entry_count = 1;

 switch (ql84_mgmt->mgmt.cmd) {
 case 129:
 case 130:
  sg_cnt = dma_map_sg(&ha->pdev->dev,
   bsg_job->reply_payload.sg_list,
   bsg_job->reply_payload.sg_cnt, DMA_FROM_DEVICE);
  if (!sg_cnt) {
   ql_log(ql_log_warn, vha, 0x703d,
       "dma_map_sg returned %d for reply.\n", sg_cnt);
   rval = -ENOMEM;
   goto exit_mgmt;
  }

  dma_direction = DMA_FROM_DEVICE;

  if (sg_cnt != bsg_job->reply_payload.sg_cnt) {
   ql_log(ql_log_warn, vha, 0x703e,
       "DMA mapping resulted in different sg counts, "
       "reply_sg_cnt: %x dma_reply_sg_cnt: %x.\n",
       bsg_job->reply_payload.sg_cnt, sg_cnt);
   rval = -EAGAIN;
   goto done_unmap_sg;
  }

  data_len = bsg_job->reply_payload.payload_len;

  mgmt_b = dma_alloc_coherent(&ha->pdev->dev, data_len,
   &mgmt_dma, GFP_KERNEL);
  if (!mgmt_b) {
   ql_log(ql_log_warn, vha, 0x703f,
       "DMA alloc failed for mgmt_b.\n");
   rval = -ENOMEM;
   goto done_unmap_sg;
  }

  if (ql84_mgmt->mgmt.cmd == 129) {
   mn->options = cpu_to_le16(ACO_DUMP_MEMORY);
   mn->parameter1 =
    cpu_to_le32(
    ql84_mgmt->mgmt.mgmtp.u.mem.start_addr);

  } else if (ql84_mgmt->mgmt.cmd == 130) {
   mn->options = cpu_to_le16(ACO_REQUEST_INFO);
   mn->parameter1 =
    cpu_to_le32(ql84_mgmt->mgmt.mgmtp.u.info.type);

   mn->parameter2 =
    cpu_to_le32(
    ql84_mgmt->mgmt.mgmtp.u.info.context);
  }
  break;

 case 128:
  sg_cnt = dma_map_sg(&ha->pdev->dev,
   bsg_job->request_payload.sg_list,
   bsg_job->request_payload.sg_cnt, DMA_TO_DEVICE);

  if (!sg_cnt) {
   ql_log(ql_log_warn, vha, 0x7040,
       "dma_map_sg returned %d.\n", sg_cnt);
   rval = -ENOMEM;
   goto exit_mgmt;
  }

  dma_direction = DMA_TO_DEVICE;

  if (sg_cnt != bsg_job->request_payload.sg_cnt) {
   ql_log(ql_log_warn, vha, 0x7041,
       "DMA mapping resulted in different sg counts, "
       "request_sg_cnt: %x dma_request_sg_cnt: %x.\n",
       bsg_job->request_payload.sg_cnt, sg_cnt);
   rval = -EAGAIN;
   goto done_unmap_sg;
  }

  data_len = bsg_job->request_payload.payload_len;
  mgmt_b = dma_alloc_coherent(&ha->pdev->dev, data_len,
   &mgmt_dma, GFP_KERNEL);
  if (!mgmt_b) {
   ql_log(ql_log_warn, vha, 0x7042,
       "DMA alloc failed for mgmt_b.\n");
   rval = -ENOMEM;
   goto done_unmap_sg;
  }

  sg_copy_to_buffer(bsg_job->request_payload.sg_list,
   bsg_job->request_payload.sg_cnt, mgmt_b, data_len);

  mn->options = cpu_to_le16(ACO_LOAD_MEMORY);
  mn->parameter1 =
   cpu_to_le32(ql84_mgmt->mgmt.mgmtp.u.mem.start_addr);
  break;

 case 131:
  mn->options = cpu_to_le16(ACO_CHANGE_CONFIG_PARAM);
  mn->parameter1 =
   cpu_to_le32(ql84_mgmt->mgmt.mgmtp.u.config.id);

  mn->parameter2 =
   cpu_to_le32(ql84_mgmt->mgmt.mgmtp.u.config.param0);

  mn->parameter3 =
   cpu_to_le32(ql84_mgmt->mgmt.mgmtp.u.config.param1);
  break;

 default:
  rval = -EIO;
  goto exit_mgmt;
 }

 if (ql84_mgmt->mgmt.cmd != 131) {
  mn->total_byte_cnt = cpu_to_le32(ql84_mgmt->mgmt.len);
  mn->dseg_count = cpu_to_le16(1);
  mn->dseg_address[0] = cpu_to_le32(LSD(mgmt_dma));
  mn->dseg_address[1] = cpu_to_le32(MSD(mgmt_dma));
  mn->dseg_length = cpu_to_le32(ql84_mgmt->mgmt.len);
 }

 rval = qla2x00_issue_iocb(vha, mn, mn_dma, 0);

 if (rval) {
  ql_log(ql_log_warn, vha, 0x7043,
      "Vendor request 84xx mgmt failed.\n");

  rval = (DID_ERROR << 16);

 } else {
  ql_dbg(ql_dbg_user, vha, 0x7044,
      "Vendor request 84xx mgmt completed.\n");

  bsg_job->reply_len = sizeof(struct fc_bsg_reply);
  bsg_job->reply->result = DID_OK;

  if ((ql84_mgmt->mgmt.cmd == 129) ||
   (ql84_mgmt->mgmt.cmd == 130)) {
   bsg_job->reply->reply_payload_rcv_len =
    bsg_job->reply_payload.payload_len;

   sg_copy_from_buffer(bsg_job->reply_payload.sg_list,
    bsg_job->reply_payload.sg_cnt, mgmt_b,
    data_len);
  }
 }

done_unmap_sg:
 if (mgmt_b)
  dma_free_coherent(&ha->pdev->dev, data_len, mgmt_b, mgmt_dma);

 if (dma_direction == DMA_TO_DEVICE)
  dma_unmap_sg(&ha->pdev->dev, bsg_job->request_payload.sg_list,
   bsg_job->request_payload.sg_cnt, DMA_TO_DEVICE);
 else if (dma_direction == DMA_FROM_DEVICE)
  dma_unmap_sg(&ha->pdev->dev, bsg_job->reply_payload.sg_list,
   bsg_job->reply_payload.sg_cnt, DMA_FROM_DEVICE);

exit_mgmt:
 dma_pool_free(ha->s_dma_pool, mn, mn_dma);

 if (!rval)
  bsg_job->job_done(bsg_job);
 return rval;
}
