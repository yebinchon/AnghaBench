
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int timeout; scalar_t__ errors; int q; int cmd_flags; int cmd_type; int cmd; int cmd_len; } ;
struct pktcdvd_device {TYPE_1__* bdev; } ;
struct packet_command {scalar_t__ data_direction; scalar_t__ quiet; int * cmd; int buflen; int buffer; } ;
struct TYPE_2__ {int bd_disk; } ;


 int CDROM_PACKET_SIZE ;
 scalar_t__ CGC_DATA_WRITE ;
 int COMMAND_SIZE (int ) ;
 int EIO ;
 int ENODEV ;
 int HZ ;
 int READ ;
 int REQ_QUIET ;
 int REQ_TYPE_BLOCK_PC ;
 int WRITE ;
 int __GFP_WAIT ;
 struct request_queue* bdev_get_queue (TYPE_1__*) ;
 int blk_execute_rq (int ,int ,struct request*,int ) ;
 struct request* blk_get_request (struct request_queue*,int ,int ) ;
 int blk_put_request (struct request*) ;
 scalar_t__ blk_rq_map_kern (struct request_queue*,struct request*,int ,int ,int ) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int pkt_generic_packet(struct pktcdvd_device *pd, struct packet_command *cgc)
{
 struct request_queue *q = bdev_get_queue(pd->bdev);
 struct request *rq;
 int ret = 0;

 rq = blk_get_request(q, (cgc->data_direction == CGC_DATA_WRITE) ?
        WRITE : READ, __GFP_WAIT);
 if (!rq)
  return -ENODEV;

 if (cgc->buflen) {
  if (blk_rq_map_kern(q, rq, cgc->buffer, cgc->buflen, __GFP_WAIT))
   goto out;
 }

 rq->cmd_len = COMMAND_SIZE(cgc->cmd[0]);
 memcpy(rq->cmd, cgc->cmd, CDROM_PACKET_SIZE);

 rq->timeout = 60*HZ;
 rq->cmd_type = REQ_TYPE_BLOCK_PC;
 if (cgc->quiet)
  rq->cmd_flags |= REQ_QUIET;

 blk_execute_rq(rq->q, pd->bdev->bd_disk, rq, 0);
 if (rq->errors)
  ret = -EIO;
out:
 blk_put_request(rq);
 return ret;
}
