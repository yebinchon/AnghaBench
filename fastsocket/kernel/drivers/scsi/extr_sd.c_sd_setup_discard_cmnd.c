
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {int provisioning_mode; TYPE_1__* device; } ;
struct scsi_device {int sector_size; } ;
struct request {int* cmd; int cmd_len; unsigned int __data_len; int * buffer; int timeout; int rq_disk; } ;
struct page {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {unsigned int sector_size; } ;


 int BLKPREP_DEFER ;
 int BLKPREP_KILL ;
 int BLKPREP_OK ;
 int GFP_ATOMIC ;




 int SD_TIMEOUT ;
 int UNMAP ;
 char WRITE_SAME ;
 int WRITE_SAME_16 ;
 int __GFP_ZERO ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int) ;
 int blk_add_request_payload (struct request*,struct page*,unsigned int) ;
 unsigned int blk_rq_bytes (struct request*) ;
 int blk_rq_pos (struct request*) ;
 unsigned int blk_rq_sectors (struct request*) ;
 int ilog2 (int ) ;
 int memset (int*,int ,int) ;
 void* page_address (struct page*) ;
 int put_unaligned_be16 (unsigned int,char*) ;
 int put_unaligned_be32 (int,char*) ;
 int put_unaligned_be64 (int,char*) ;
 struct scsi_disk* scsi_disk (int ) ;
 int scsi_setup_blk_pc_cmnd (struct scsi_device*,struct request*) ;

__attribute__((used)) static int sd_setup_discard_cmnd(struct scsi_device *sdp, struct request *rq)
{
 struct scsi_disk *sdkp = scsi_disk(rq->rq_disk);
 sector_t sector = blk_rq_pos(rq);
 unsigned int nr_sectors = blk_rq_sectors(rq);
 unsigned int nr_bytes = blk_rq_bytes(rq);
 unsigned int len;
 int ret;
 char *buf;
 struct page *page;

 sector >>= ilog2(sdp->sector_size) - 9;
 nr_sectors >>= ilog2(sdp->sector_size) - 9;
 rq->timeout = SD_TIMEOUT;

 memset(rq->cmd, 0, rq->cmd_len);

 page = alloc_page(GFP_ATOMIC | __GFP_ZERO);
 if (!page)
  return BLKPREP_DEFER;

 switch (sdkp->provisioning_mode) {
 case 131:
  buf = page_address(page);

  rq->cmd_len = 10;
  rq->cmd[0] = UNMAP;
  rq->cmd[8] = 24;

  put_unaligned_be16(6 + 16, &buf[0]);
  put_unaligned_be16(16, &buf[2]);
  put_unaligned_be64(sector, &buf[8]);
  put_unaligned_be32(nr_sectors, &buf[16]);

  len = 24;
  break;

 case 129:
  rq->cmd_len = 16;
  rq->cmd[0] = WRITE_SAME_16;
  rq->cmd[1] = 0x8;
  put_unaligned_be64(sector, &rq->cmd[2]);
  put_unaligned_be32(nr_sectors, &rq->cmd[10]);

  len = sdkp->device->sector_size;
  break;

 case 130:
 case 128:
  rq->cmd_len = 10;
  rq->cmd[0] = WRITE_SAME;
  if (sdkp->provisioning_mode == 130)
   rq->cmd[1] = 0x8;
  put_unaligned_be32(sector, &rq->cmd[2]);
  put_unaligned_be16(nr_sectors, &rq->cmd[7]);

  len = sdkp->device->sector_size;
  break;

 default:
  ret = BLKPREP_KILL;
  goto out;
 }

 blk_add_request_payload(rq, page, len);
 ret = scsi_setup_blk_pc_cmnd(sdp, rq);
 rq->buffer = page_address(page);
 rq->__data_len = nr_bytes;

out:
 if (ret != BLKPREP_OK) {
  __free_page(page);
  rq->buffer = ((void*)0);
 }
 return ret;
}
