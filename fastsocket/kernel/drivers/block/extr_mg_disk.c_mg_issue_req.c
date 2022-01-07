
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mg_host {unsigned int error; scalar_t__ dev_base; int timer; } ;


 int ATA_DRQ ;
 int ATA_NIEN ;
 int HZ ;
 int MG_CMD_RD ;
 int MG_CMD_WR ;
 int MG_CMD_WR_CONF ;
 unsigned int MG_ERR_NONE ;
 int MG_REG_COMMAND ;
 int MG_REG_DRV_CTRL ;
 int MG_TMAX_WAIT_WR_DRQ ;


 int del_timer (int *) ;
 int jiffies ;
 int mg_bad_rw_intr (struct mg_host*) ;
 unsigned int mg_out (struct mg_host*,unsigned int,unsigned int,int ,int *) ;
 int mg_read_intr ;
 int mg_wait (struct mg_host*,int ,int ) ;
 int mg_write_intr ;
 int mg_write_one (struct mg_host*,struct request*) ;
 int mod_timer (int *,int ) ;
 int outb (int ,int ) ;
 int rq_data_dir (struct request*) ;

__attribute__((used)) static unsigned int mg_issue_req(struct request *req,
  struct mg_host *host,
  unsigned int sect_num,
  unsigned int sect_cnt)
{
 switch (rq_data_dir(req)) {
 case 129:
  if (mg_out(host, sect_num, sect_cnt, MG_CMD_RD, &mg_read_intr)
    != MG_ERR_NONE) {
   mg_bad_rw_intr(host);
   return host->error;
  }
  break;
 case 128:

  outb(ATA_NIEN, (unsigned long)host->dev_base + MG_REG_DRV_CTRL);
  if (mg_out(host, sect_num, sect_cnt, MG_CMD_WR, &mg_write_intr)
    != MG_ERR_NONE) {
   mg_bad_rw_intr(host);
   return host->error;
  }
  del_timer(&host->timer);
  mg_wait(host, ATA_DRQ, MG_TMAX_WAIT_WR_DRQ);
  outb(0, (unsigned long)host->dev_base + MG_REG_DRV_CTRL);
  if (host->error) {
   mg_bad_rw_intr(host);
   return host->error;
  }
  mg_write_one(host, req);
  mod_timer(&host->timer, jiffies + 3 * HZ);
  outb(MG_CMD_WR_CONF, (unsigned long)host->dev_base +
    MG_REG_COMMAND);
  break;
 }
 return MG_ERR_NONE;
}
