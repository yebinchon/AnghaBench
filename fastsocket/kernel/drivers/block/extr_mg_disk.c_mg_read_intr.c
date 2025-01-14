
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct request {int buffer; } ;
struct mg_host {void (* mg_do_intr ) (struct mg_host*) ;int breq; int timer; scalar_t__ dev_base; struct request* req; } ;


 int ATA_BUSY ;
 int ATA_DRQ ;
 int HZ ;
 int MG_CMD_RD_CONF ;
 int MG_DBG (char*,int ,scalar_t__,int ) ;
 int MG_READY_OK (int) ;
 scalar_t__ MG_REG_COMMAND ;
 scalar_t__ MG_REG_STATUS ;
 int MG_SECTOR_SIZE ;
 int blk_rq_pos (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 int inb (scalar_t__) ;
 scalar_t__ jiffies ;
 int mg_bad_rw_intr (struct mg_host*) ;
 int mg_dump_status (char*,int,struct mg_host*) ;
 scalar_t__ mg_end_request (struct mg_host*,int ,int ) ;
 int mg_read_one (struct mg_host*,struct request*) ;
 int mg_request (int ) ;
 int mod_timer (int *,scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void mg_read_intr(struct mg_host *host)
{
 struct request *req = host->req;
 u32 i;


 do {
  i = inb((unsigned long)host->dev_base + MG_REG_STATUS);
  if (i & ATA_BUSY)
   break;
  if (!MG_READY_OK(i))
   break;
  if (i & ATA_DRQ)
   goto ok_to_read;
 } while (0);
 mg_dump_status("mg_read_intr", i, host);
 mg_bad_rw_intr(host);
 mg_request(host->breq);
 return;

ok_to_read:
 mg_read_one(host, req);

 MG_DBG("sector %ld, remaining=%ld, buffer=0x%p\n",
        blk_rq_pos(req), blk_rq_sectors(req) - 1, req->buffer);


 outb(MG_CMD_RD_CONF, (unsigned long)host->dev_base + MG_REG_COMMAND);

 if (mg_end_request(host, 0, MG_SECTOR_SIZE)) {

  host->mg_do_intr = mg_read_intr;
  mod_timer(&host->timer, jiffies + 3 * HZ);
 } else
  mg_request(host->breq);
}
