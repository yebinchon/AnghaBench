
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdricoh_host {int dummy; } ;


 unsigned int CMD_TIMEOUT ;
 int ETIMEDOUT ;
 int R200_CMD ;
 int R204_CMD_ARG ;
 int R21C_STATUS ;
 int R2E4_STATUS_RESP ;
 unsigned int STATUS_CMD_FINISHED ;
 unsigned int STATUS_CMD_TIMEOUT ;
 unsigned int sdricoh_readl (struct sdricoh_host*,int ) ;
 int sdricoh_writel (struct sdricoh_host*,int ,unsigned int) ;

__attribute__((used)) static int sdricoh_mmc_cmd(struct sdricoh_host *host, unsigned char opcode,
      unsigned int arg)
{
 unsigned int status;
 int result = 0;
 unsigned int loop = 0;

 sdricoh_writel(host, R21C_STATUS, 0x18);

 sdricoh_writel(host, R204_CMD_ARG, arg);
 sdricoh_writel(host, R200_CMD, (0x10000 << 8) | opcode);

 if (opcode) {
  for (loop = 0; loop < CMD_TIMEOUT; loop++) {
   status = sdricoh_readl(host, R21C_STATUS);
   sdricoh_writel(host, R2E4_STATUS_RESP, status);
   if (status & STATUS_CMD_FINISHED)
    break;
  }



  if (loop == CMD_TIMEOUT || status & STATUS_CMD_TIMEOUT)
   result = -ETIMEDOUT;

 }

 return result;

}
