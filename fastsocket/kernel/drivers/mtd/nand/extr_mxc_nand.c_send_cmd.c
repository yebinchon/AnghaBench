
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mxc_nand_host {scalar_t__ regs; } ;


 int DEBUG (int ,char*,int ,int) ;
 int MTD_DEBUG_LEVEL3 ;
 int NFC_CMD ;
 scalar_t__ NFC_CONFIG2 ;
 scalar_t__ NFC_FLASH_CMD ;
 int TROP_US_DELAY ;
 int wait_op_done (struct mxc_nand_host*,int ,int ,int) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void send_cmd(struct mxc_nand_host *host, uint16_t cmd, int useirq)
{
 DEBUG(MTD_DEBUG_LEVEL3, "send_cmd(host, 0x%x, %d)\n", cmd, useirq);

 writew(cmd, host->regs + NFC_FLASH_CMD);
 writew(NFC_CMD, host->regs + NFC_CONFIG2);


 wait_op_done(host, TROP_US_DELAY, cmd, useirq);
}
