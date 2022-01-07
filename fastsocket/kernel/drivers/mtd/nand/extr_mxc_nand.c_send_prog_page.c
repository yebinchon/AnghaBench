
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct mxc_nand_host {scalar_t__ regs; int pagesize_2k; } ;


 int DEBUG (int ,char*,int) ;
 int MTD_DEBUG_LEVEL3 ;
 scalar_t__ NFC_BUF_ADDR ;
 scalar_t__ NFC_CONFIG1 ;
 scalar_t__ NFC_CONFIG2 ;
 int NFC_INPUT ;
 int NFC_SP_EN ;
 int TROP_US_DELAY ;
 int readw (scalar_t__) ;
 int wait_op_done (struct mxc_nand_host*,int ,int,int) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void send_prog_page(struct mxc_nand_host *host, uint8_t buf_id,
   int spare_only)
{
 DEBUG(MTD_DEBUG_LEVEL3, "send_prog_page (%d)\n", spare_only);


 writew(buf_id, host->regs + NFC_BUF_ADDR);


 if (!host->pagesize_2k) {
  uint16_t config1 = readw(host->regs + NFC_CONFIG1);
  if (spare_only)
   config1 |= NFC_SP_EN;
  else
   config1 &= ~(NFC_SP_EN);
  writew(config1, host->regs + NFC_CONFIG1);
 }

 writew(NFC_INPUT, host->regs + NFC_CONFIG2);


 wait_op_done(host, TROP_US_DELAY, spare_only, 1);
}
