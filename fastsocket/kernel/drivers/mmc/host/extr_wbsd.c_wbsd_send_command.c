
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wbsd_host {int isr; scalar_t__ base; } ;
struct mmc_command {int opcode; int arg; int flags; int error; } ;


 int EILSEQ ;
 int ENOMEDIUM ;
 int ETIMEDOUT ;
 int MMC_RSP_136 ;
 int MMC_RSP_CRC ;
 int MMC_RSP_PRESENT ;
 int WBSD_CARDTRAFFIC ;
 scalar_t__ WBSD_CMDR ;
 int WBSD_IDX_STATUS ;
 int WBSD_INT_CARD ;
 int WBSD_INT_CRC ;
 int WBSD_INT_TIMEOUT ;
 int outb (int,scalar_t__) ;
 int wbsd_get_long_reply (struct wbsd_host*,struct mmc_command*) ;
 int wbsd_get_short_reply (struct wbsd_host*,struct mmc_command*) ;
 int wbsd_read_index (struct wbsd_host*,int ) ;

__attribute__((used)) static void wbsd_send_command(struct wbsd_host *host, struct mmc_command *cmd)
{
 int i;
 u8 status, isr;






 host->isr = 0;




 outb(cmd->opcode, host->base + WBSD_CMDR);
 for (i = 3; i >= 0; i--)
  outb((cmd->arg >> (i * 8)) & 0xff, host->base + WBSD_CMDR);

 cmd->error = 0;




 do {
  status = wbsd_read_index(host, WBSD_IDX_STATUS);
 } while (status & WBSD_CARDTRAFFIC);




 if (cmd->flags & MMC_RSP_PRESENT) {



  isr = host->isr;


  if (isr & WBSD_INT_CARD)
   cmd->error = -ENOMEDIUM;

  else if (isr & WBSD_INT_TIMEOUT)
   cmd->error = -ETIMEDOUT;

  else if ((cmd->flags & MMC_RSP_CRC) && (isr & WBSD_INT_CRC))
   cmd->error = -EILSEQ;

  else {
   if (cmd->flags & MMC_RSP_136)
    wbsd_get_long_reply(host, cmd);
   else
    wbsd_get_short_reply(host, cmd);
  }
 }
}
