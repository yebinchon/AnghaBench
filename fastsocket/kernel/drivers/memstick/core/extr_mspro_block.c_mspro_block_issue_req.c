
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct mspro_param_register {int data_address; scalar_t__ tpc_param; int data_count; int system; } ;
struct mspro_block_data {unsigned int page_size; scalar_t__ data_dir; TYPE_1__* block_req; int queue; int mrq_handler; int transfer_cmd; int system; int seg_count; int req_sg; scalar_t__ current_seg; scalar_t__ current_page; } ;
struct memstick_dev {int dev; int host; int current_mrq; int next_request; } ;
typedef int sector_t ;
typedef int param ;
struct TYPE_7__ {int q; } ;


 int EAGAIN ;
 int ENOMEM ;
 int MSPRO_CMD_READ_DATA ;
 int MSPRO_CMD_WRITE_DATA ;
 int MS_TPC_WRITE_REG ;
 scalar_t__ READ ;
 int __blk_end_request_cur (TYPE_1__*,int ) ;
 int be32_to_cpu (int ) ;
 TYPE_1__* blk_fetch_request (int ) ;
 unsigned int blk_rq_bytes (TYPE_1__*) ;
 int blk_rq_map_sg (int ,TYPE_1__*,int ) ;
 int blk_rq_pos (TYPE_1__*) ;
 int cpu_to_be16 (unsigned int) ;
 int cpu_to_be32 (int ) ;
 int dev_dbg (int *,char*,...) ;
 int h_mspro_block_req_init ;
 int h_mspro_block_transfer_data ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 int memstick_init_req (int *,int ,struct mspro_param_register*,int) ;
 int memstick_new_req (int ) ;
 scalar_t__ rq_data_dir (TYPE_1__*) ;
 int sector_div (int,unsigned int) ;

__attribute__((used)) static int mspro_block_issue_req(struct memstick_dev *card, int chunk)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);
 sector_t t_sec;
 unsigned int count;
 struct mspro_param_register param;

try_again:
 while (chunk) {
  msb->current_page = 0;
  msb->current_seg = 0;
  msb->seg_count = blk_rq_map_sg(msb->block_req->q,
            msb->block_req,
            msb->req_sg);

  if (!msb->seg_count) {
   chunk = __blk_end_request_cur(msb->block_req, -ENOMEM);
   continue;
  }

  t_sec = blk_rq_pos(msb->block_req) << 9;
  sector_div(t_sec, msb->page_size);

  count = blk_rq_bytes(msb->block_req);
  count /= msb->page_size;

  param.system = msb->system;
  param.data_count = cpu_to_be16(count);
  param.data_address = cpu_to_be32((uint32_t)t_sec);
  param.tpc_param = 0;

  msb->data_dir = rq_data_dir(msb->block_req);
  msb->transfer_cmd = msb->data_dir == READ
        ? MSPRO_CMD_READ_DATA
        : MSPRO_CMD_WRITE_DATA;

  dev_dbg(&card->dev, "data transfer: cmd %x, "
   "lba %x, count %x\n", msb->transfer_cmd,
   be32_to_cpu(param.data_address), count);

  card->next_request = h_mspro_block_req_init;
  msb->mrq_handler = h_mspro_block_transfer_data;
  memstick_init_req(&card->current_mrq, MS_TPC_WRITE_REG,
      &param, sizeof(param));
  memstick_new_req(card->host);
  return 0;
 }

 dev_dbg(&card->dev, "blk_fetch\n");
 msb->block_req = blk_fetch_request(msb->queue);
 if (!msb->block_req) {
  dev_dbg(&card->dev, "issue end\n");
  return -EAGAIN;
 }

 dev_dbg(&card->dev, "trying again\n");
 chunk = 1;
 goto try_again;
}
