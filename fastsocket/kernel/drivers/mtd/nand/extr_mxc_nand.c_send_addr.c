
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mxc_nand_host {scalar_t__ regs; } ;


 int DEBUG (int ,char*,int ,int) ;
 int MTD_DEBUG_LEVEL3 ;
 int NFC_ADDR ;
 scalar_t__ NFC_CONFIG2 ;
 scalar_t__ NFC_FLASH_ADDR ;
 int TROP_US_DELAY ;
 int wait_op_done (struct mxc_nand_host*,int ,int ,int) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void send_addr(struct mxc_nand_host *host, uint16_t addr, int islast)
{
 DEBUG(MTD_DEBUG_LEVEL3, "send_addr(host, 0x%x %d)\n", addr, islast);

 writew(addr, host->regs + NFC_FLASH_ADDR);
 writew(NFC_ADDR, host->regs + NFC_CONFIG2);


 wait_op_done(host, TROP_US_DELAY, addr, islast);
}
