
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct pxa3xx_nand_info {int ndcb0; int data_size; scalar_t__ ndcb2; scalar_t__ ndcb1; TYPE_1__* flash_info; } ;
struct pxa3xx_nand_cmdset {int read_id; int read_status; int reset; int lock; int unlock; } ;
struct TYPE_2__ {struct pxa3xx_nand_cmdset* cmdset; } ;


 int EINVAL ;
 int NDCB0_CMD_TYPE (int) ;
 int NDCB0_DBC ;

__attribute__((used)) static int prepare_other_cmd(struct pxa3xx_nand_info *info, uint16_t cmd)
{
 const struct pxa3xx_nand_cmdset *cmdset = info->flash_info->cmdset;

 info->ndcb0 = cmd | ((cmd & 0xff00) ? NDCB0_DBC : 0);
 info->ndcb1 = 0;
 info->ndcb2 = 0;

 if (cmd == cmdset->read_id) {
  info->ndcb0 |= NDCB0_CMD_TYPE(3);
  info->data_size = 8;
 } else if (cmd == cmdset->read_status) {
  info->ndcb0 |= NDCB0_CMD_TYPE(4);
  info->data_size = 8;
 } else if (cmd == cmdset->reset || cmd == cmdset->lock ||
     cmd == cmdset->unlock) {
  info->ndcb0 |= NDCB0_CMD_TYPE(5);
 } else
  return -EINVAL;

 return 0;
}
