
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct scatterlist {int dummy; } ;
struct qla_hw_data {int dl_dma_pool; } ;
struct qla2_sgx {scalar_t__ dma_len; scalar_t__ dma_addr; TYPE_4__* sp; int cur_sg; int tot_bytes; } ;
struct dsd_dma {scalar_t__ dsd_list_dma; int list; void* dsd_addr; } ;
struct crc_context {int dsd_list; } ;
struct TYPE_8__ {scalar_t__ ctx; } ;
struct TYPE_9__ {TYPE_2__ scmd; } ;
struct TYPE_10__ {int flags; TYPE_3__ u; } ;
typedef TYPE_4__ srb_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_7__ {scalar_t__ sector_size; } ;


 struct scsi_cmnd* GET_CMD_SP (TYPE_4__*) ;
 int GFP_ATOMIC ;
 scalar_t__ LSD (scalar_t__) ;
 scalar_t__ MSD (scalar_t__) ;
 scalar_t__ QLA_DSDS_PER_IOCB ;
 int SRB_CRC_CTX_DSD_VALID ;
 void* cpu_to_le32 (scalar_t__) ;
 void* dma_pool_alloc (int ,int ,scalar_t__*) ;
 int kfree (struct dsd_dma*) ;
 struct dsd_dma* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (struct qla2_sgx*,int ,int) ;
 scalar_t__ qla24xx_get_one_block_sg (scalar_t__,struct qla2_sgx*,scalar_t__*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 struct scatterlist* scsi_prot_sglist (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;
 scalar_t__ sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int
qla24xx_walk_and_build_sglist_no_difb(struct qla_hw_data *ha, srb_t *sp,
 uint32_t *dsd, uint16_t tot_dsds)
{
 void *next_dsd;
 uint8_t avail_dsds = 0;
 uint32_t dsd_list_len;
 struct dsd_dma *dsd_ptr;
 struct scatterlist *sg_prot;
 uint32_t *cur_dsd = dsd;
 uint16_t used_dsds = tot_dsds;

 uint32_t prot_int;
 uint32_t partial;
 struct qla2_sgx sgx;
 dma_addr_t sle_dma;
 uint32_t sle_dma_len, tot_prot_dma_len = 0;
 struct scsi_cmnd *cmd = GET_CMD_SP(sp);

 prot_int = cmd->device->sector_size;

 memset(&sgx, 0, sizeof(struct qla2_sgx));
 sgx.tot_bytes = scsi_bufflen(cmd);
 sgx.cur_sg = scsi_sglist(cmd);
 sgx.sp = sp;

 sg_prot = scsi_prot_sglist(cmd);

 while (qla24xx_get_one_block_sg(prot_int, &sgx, &partial)) {

  sle_dma = sgx.dma_addr;
  sle_dma_len = sgx.dma_len;
alloc_and_fill:

  if (avail_dsds == 0) {
   avail_dsds = (used_dsds > QLA_DSDS_PER_IOCB) ?
     QLA_DSDS_PER_IOCB : used_dsds;
   dsd_list_len = (avail_dsds + 1) * 12;
   used_dsds -= avail_dsds;


   dsd_ptr = kzalloc(sizeof(struct dsd_dma), GFP_ATOMIC);
   if (!dsd_ptr)
    return 1;


   dsd_ptr->dsd_addr = next_dsd =
       dma_pool_alloc(ha->dl_dma_pool, GFP_ATOMIC,
    &dsd_ptr->dsd_list_dma);

   if (!next_dsd) {




    kfree(dsd_ptr);
    return 1;
   }

   list_add_tail(&dsd_ptr->list,
       &((struct crc_context *)sp->u.scmd.ctx)->dsd_list);

   sp->flags |= SRB_CRC_CTX_DSD_VALID;


   *cur_dsd++ = cpu_to_le32(LSD(dsd_ptr->dsd_list_dma));
   *cur_dsd++ = cpu_to_le32(MSD(dsd_ptr->dsd_list_dma));
   *cur_dsd++ = dsd_list_len;
   cur_dsd = (uint32_t *)next_dsd;
  }
  *cur_dsd++ = cpu_to_le32(LSD(sle_dma));
  *cur_dsd++ = cpu_to_le32(MSD(sle_dma));
  *cur_dsd++ = cpu_to_le32(sle_dma_len);
  avail_dsds--;

  if (partial == 0) {

   sle_dma = sg_dma_address(sg_prot) + tot_prot_dma_len;
   sle_dma_len = 8;

   tot_prot_dma_len += sle_dma_len;
   if (tot_prot_dma_len == sg_dma_len(sg_prot)) {
    tot_prot_dma_len = 0;
    sg_prot = sg_next(sg_prot);
   }

   partial = 1;
   goto alloc_and_fill;
  }
 }

 *cur_dsd++ = 0;
 *cur_dsd++ = 0;
 *cur_dsd++ = 0;
 return 0;
}
