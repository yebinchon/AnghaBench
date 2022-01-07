
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_mailbox {int dma; } ;
struct mthca_dev {int dummy; } ;


 int CMD_HW2SW_SRQ ;
 int CMD_TIME_CLASS_A ;
 int mthca_cmd_box (struct mthca_dev*,int ,int ,int,int ,int ,int ) ;

int mthca_HW2SW_SRQ(struct mthca_dev *dev, struct mthca_mailbox *mailbox,
      int srq_num)
{
 return mthca_cmd_box(dev, 0, mailbox->dma, srq_num, 0,
        CMD_HW2SW_SRQ,
        CMD_TIME_CLASS_A);
}
