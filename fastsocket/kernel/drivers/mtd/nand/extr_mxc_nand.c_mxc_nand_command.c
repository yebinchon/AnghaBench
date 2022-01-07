
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {struct mxc_nand_host* priv; } ;
struct mxc_nand_host {int status_request; int col_addr; int spare_only; scalar_t__ pagesize_2k; } ;
struct mtd_info {int writesize; int size; struct nand_chip* priv; } ;


 int DEBUG (int ,char*,unsigned int,int,int) ;
 int MTD_DEBUG_LEVEL3 ;






 unsigned int NAND_CMD_READSTART ;



 int send_addr (struct mxc_nand_host*,int,int) ;
 int send_cmd (struct mxc_nand_host*,int const,int) ;
 int send_prog_page (struct mxc_nand_host*,int,int) ;
 int send_read_id (struct mxc_nand_host*) ;
 int send_read_page (struct mxc_nand_host*,int,int) ;

__attribute__((used)) static void mxc_nand_command(struct mtd_info *mtd, unsigned command,
    int column, int page_addr)
{
 struct nand_chip *nand_chip = mtd->priv;
 struct mxc_nand_host *host = nand_chip->priv;
 int useirq = 1;

 DEBUG(MTD_DEBUG_LEVEL3,
       "mxc_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\n",
       command, column, page_addr);


 host->status_request = 0;


 switch (command) {

 case 128:
  host->col_addr = 0;
  host->status_request = 1;
  break;

 case 133:
  host->col_addr = column;
  host->spare_only = 0;
  useirq = 0;
  break;

 case 131:
  host->col_addr = column;
  host->spare_only = 1;
  useirq = 0;
  if (host->pagesize_2k)
   command = 133;
  break;

 case 129:
  if (column >= mtd->writesize) {







   if (host->pagesize_2k)

    mxc_nand_command(mtd, 133, 0,
      page_addr);

   host->col_addr = column - mtd->writesize;
   host->spare_only = 1;


   if (!host->pagesize_2k)
    send_cmd(host, 131, 0);
  } else {
   host->spare_only = 0;
   host->col_addr = column;


   if (!host->pagesize_2k)
    send_cmd(host, 133, 0);
  }
  useirq = 0;
  break;

 case 134:
  send_prog_page(host, 0, host->spare_only);

  if (host->pagesize_2k) {

   send_prog_page(host, 1, host->spare_only);
   send_prog_page(host, 2, host->spare_only);
   send_prog_page(host, 3, host->spare_only);
  }

  break;

 case 136:
  useirq = 0;
  break;
 }


 send_cmd(host, command, useirq);


 if (column != -1) {







  send_addr(host, 0, page_addr == -1);
  if (host->pagesize_2k)

   send_addr(host, 0, 0);
 }


 if (page_addr != -1) {

  send_addr(host, (page_addr & 0xff), 0);

  if (host->pagesize_2k) {
   if (mtd->size >= 0x10000000) {

    send_addr(host, (page_addr >> 8) & 0xff, 0);
    send_addr(host, (page_addr >> 16) & 0xff, 1);
   } else

    send_addr(host, (page_addr >> 8) & 0xff, 1);
  } else {

   if (mtd->size >= 0x4000000) {

    send_addr(host, (page_addr >> 8) & 0xff, 0);
    send_addr(host, (page_addr >> 16) & 0xff, 1);
   } else

    send_addr(host, (page_addr >> 8) & 0xff, 1);
  }
 }


 switch (command) {

 case 130:
  break;

 case 131:
 case 133:
  if (host->pagesize_2k) {

   send_cmd(host, NAND_CMD_READSTART, 1);

   send_read_page(host, 0, host->spare_only);
   send_read_page(host, 1, host->spare_only);
   send_read_page(host, 2, host->spare_only);
   send_read_page(host, 3, host->spare_only);
  } else
   send_read_page(host, 0, host->spare_only);
  break;

 case 132:
  host->col_addr = 0;
  send_read_id(host);
  break;

 case 134:
  break;

 case 128:
  break;

 case 135:
  break;
 }
}
