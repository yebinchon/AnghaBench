
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct request {int q; struct i2o_block_request* special; TYPE_1__* rq_disk; } ;
struct TYPE_10__ {void* tcntxt; void* icntxt; } ;
struct TYPE_11__ {int* head; TYPE_4__ s; } ;
struct i2o_message {int* body; TYPE_5__ u; } ;
struct i2o_controller {scalar_t__ adaptec; } ;
struct i2o_block_request {int queue; } ;
struct i2o_block_device {int rcache; int wcache; int open_queue_depth; int open_queue; TYPE_3__* i2o_dev; } ;
struct TYPE_12__ {int context; } ;
struct TYPE_8__ {int tid; } ;
struct TYPE_9__ {struct i2o_controller* iop; TYPE_2__ lct_data; } ;
struct TYPE_7__ {struct i2o_block_device* private_data; } ;
 int ENODEV ;
 int ENOMEM ;
 int HOST_TID ;
 int I2O_CMD_BLOCK_READ ;
 int I2O_CMD_BLOCK_WRITE ;
 int I2O_CMD_PRIVATE ;
 int I2O_CMD_SCSI_EXEC ;
 int I2O_MESSAGE_SIZE (int) ;
 int I2O_VENDOR_DPT ;
 scalar_t__ IS_ERR (struct i2o_message*) ;
 int KERNEL_SECTOR_SHIFT ;
 int PTR_ERR (struct i2o_message*) ;
 scalar_t__ READ ;
 int READ_10 ;
 int SGL_OFFSET_12 ;
 int SGL_OFFSET_8 ;
 int WRITE_10 ;
 int blk_rq_bytes (struct request*) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;
 void* cpu_to_le32 (int) ;
 TYPE_6__ i2o_block_driver ;
 int i2o_block_sglist_alloc (struct i2o_controller*,struct i2o_block_request*,int**) ;
 int i2o_cntxt_list_add (struct i2o_controller*,struct request*) ;
 int i2o_cntxt_list_remove (struct i2o_controller*,struct request*) ;
 struct i2o_message* i2o_msg_get (struct i2o_controller*) ;
 int i2o_msg_nop (struct i2o_controller*,struct i2o_message*) ;
 int i2o_msg_post (struct i2o_controller*,struct i2o_message*) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int*,int *,int) ;
 int memset (int *,int ,int) ;
 int osm_err (char*) ;
 int queue_logical_block_size (int ) ;
 scalar_t__ rq_data_dir (struct request*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int i2o_block_transfer(struct request *req)
{
 struct i2o_block_device *dev = req->rq_disk->private_data;
 struct i2o_controller *c;
 u32 tid = dev->i2o_dev->lct_data.tid;
 struct i2o_message *msg;
 u32 *mptr;
 struct i2o_block_request *ireq = req->special;
 u32 tcntxt;
 u32 sgl_offset = SGL_OFFSET_8;
 u32 ctl_flags = 0x00000000;
 int rc;
 u32 cmd;

 if (unlikely(!dev->i2o_dev)) {
  osm_err("transfer to removed drive\n");
  rc = -ENODEV;
  goto exit;
 }

 c = dev->i2o_dev->iop;

 msg = i2o_msg_get(c);
 if (IS_ERR(msg)) {
  rc = PTR_ERR(msg);
  goto exit;
 }

 tcntxt = i2o_cntxt_list_add(c, req);
 if (!tcntxt) {
  rc = -ENOMEM;
  goto nop_msg;
 }

 msg->u.s.icntxt = cpu_to_le32(i2o_block_driver.context);
 msg->u.s.tcntxt = cpu_to_le32(tcntxt);

 mptr = &msg->body[0];

 if (rq_data_dir(req) == READ) {
  cmd = I2O_CMD_BLOCK_READ << 24;

  switch (dev->rcache) {
  case 133:
   ctl_flags = 0x201F0008;
   break;

  case 131:
   if (blk_rq_sectors(req) > 16)
    ctl_flags = 0x201F0008;
   else
    ctl_flags = 0x001F0000;
   break;

  default:
   break;
  }
 } else {
  cmd = I2O_CMD_BLOCK_WRITE << 24;

  switch (dev->wcache) {
  case 128:
   ctl_flags = 0x001F0008;
   break;
  case 129:
   ctl_flags = 0x001F0010;
   break;
  case 132:
   if (blk_rq_sectors(req) > 16)
    ctl_flags = 0x001F0004;
   else
    ctl_flags = 0x001F0010;
   break;
  case 130:
   if (blk_rq_sectors(req) > 16)
    ctl_flags = 0x001F0004;
   else
    ctl_flags = 0x001F0010;
  default:
   break;
  }
 }
 {
  msg->u.head[1] = cpu_to_le32(cmd | HOST_TID << 12 | tid);
  *mptr++ = cpu_to_le32(ctl_flags);
  *mptr++ = cpu_to_le32(blk_rq_bytes(req));
  *mptr++ =
      cpu_to_le32((u32) (blk_rq_pos(req) << KERNEL_SECTOR_SHIFT));
  *mptr++ =
      cpu_to_le32(blk_rq_pos(req) >> (32 - KERNEL_SECTOR_SHIFT));
 }

 if (!i2o_block_sglist_alloc(c, ireq, &mptr)) {
  rc = -ENOMEM;
  goto context_remove;
 }

 msg->u.head[0] =
     cpu_to_le32(I2O_MESSAGE_SIZE(mptr - &msg->u.head[0]) | sgl_offset);

 list_add_tail(&ireq->queue, &dev->open_queue);
 dev->open_queue_depth++;

 i2o_msg_post(c, msg);

 return 0;

      context_remove:
 i2o_cntxt_list_remove(c, req);

      nop_msg:
 i2o_msg_nop(c, msg);

      exit:
 return rc;
}
