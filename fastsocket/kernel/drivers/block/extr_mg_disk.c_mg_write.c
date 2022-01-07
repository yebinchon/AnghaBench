
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int buffer; TYPE_1__* rq_disk; } ;
struct mg_host {scalar_t__ dev_base; } ;
struct TYPE_2__ {struct mg_host* private_data; } ;


 int ATA_DRQ ;
 int MG_CMD_WR ;
 int MG_CMD_WR_CONF ;
 int MG_DBG (char*,unsigned int,int ,int ) ;
 scalar_t__ MG_ERR_NONE ;
 scalar_t__ MG_REG_COMMAND ;
 int MG_SECTOR_SIZE ;
 int MG_STAT_READY ;
 int MG_TMAX_WAIT_WR_DRQ ;
 int blk_rq_pos (struct request*) ;
 unsigned int blk_rq_sectors (struct request*) ;
 int mg_bad_rw_intr (struct mg_host*) ;
 scalar_t__ mg_end_request (struct mg_host*,int ,int ) ;
 scalar_t__ mg_out (struct mg_host*,int ,unsigned int,int ,int *) ;
 scalar_t__ mg_wait (struct mg_host*,int ,int ) ;
 int mg_write_one (struct mg_host*,struct request*) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void mg_write(struct request *req)
{
 struct mg_host *host = req->rq_disk->private_data;
 unsigned int rem = blk_rq_sectors(req);

 if (mg_out(host, blk_rq_pos(req), rem,
     MG_CMD_WR, ((void*)0)) != MG_ERR_NONE) {
  mg_bad_rw_intr(host);
  return;
 }

 MG_DBG("requested %d sects (from %ld), buffer=0x%p\n",
        rem, blk_rq_pos(req), req->buffer);

 if (mg_wait(host, ATA_DRQ,
      MG_TMAX_WAIT_WR_DRQ) != MG_ERR_NONE) {
  mg_bad_rw_intr(host);
  return;
 }

 do {
  mg_write_one(host, req);

  outb(MG_CMD_WR_CONF, (unsigned long)host->dev_base +
    MG_REG_COMMAND);

  rem--;
  if (rem > 1 && mg_wait(host, ATA_DRQ,
     MG_TMAX_WAIT_WR_DRQ) != MG_ERR_NONE) {
   mg_bad_rw_intr(host);
   return;
  } else if (mg_wait(host, MG_STAT_READY,
     MG_TMAX_WAIT_WR_DRQ) != MG_ERR_NONE) {
   mg_bad_rw_intr(host);
   return;
  }
 } while (mg_end_request(host, 0, MG_SECTOR_SIZE));
}
