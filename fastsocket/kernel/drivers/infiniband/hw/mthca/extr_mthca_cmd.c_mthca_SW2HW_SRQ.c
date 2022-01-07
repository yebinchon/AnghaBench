
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_mailbox {int dma; } ;
struct mthca_dev {int dummy; } ;


 int CMD_SW2HW_SRQ ;
 int CMD_TIME_CLASS_A ;
 int mthca_cmd (struct mthca_dev*,int ,int,int ,int ,int ) ;

int mthca_SW2HW_SRQ(struct mthca_dev *dev, struct mthca_mailbox *mailbox,
      int srq_num)
{
 return mthca_cmd(dev, mailbox->dma, srq_num, 0, CMD_SW2HW_SRQ,
   CMD_TIME_CLASS_A);
}
