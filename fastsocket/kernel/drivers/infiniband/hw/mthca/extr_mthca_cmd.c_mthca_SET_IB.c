
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_set_ib_param {int si_guid; int cap_mask; scalar_t__ reset_qkey_viol; scalar_t__ set_si_guid; } ;
struct mthca_mailbox {int dma; int * buf; } ;
struct mthca_dev {int dummy; } ;


 int CMD_SET_IB ;
 int CMD_TIME_CLASS_B ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mthca_mailbox*) ;
 int MTHCA_PUT (int *,int ,int ) ;
 int PTR_ERR (struct mthca_mailbox*) ;
 int SET_IB_CAP_MASK_OFFSET ;
 int SET_IB_FLAGS_OFFSET ;
 int SET_IB_FLAG_RQK ;
 int SET_IB_FLAG_SIG ;
 int SET_IB_IN_SIZE ;
 int SET_IB_SI_GUID_OFFSET ;
 int memset (int *,int ,int ) ;
 struct mthca_mailbox* mthca_alloc_mailbox (struct mthca_dev*,int ) ;
 int mthca_cmd (struct mthca_dev*,int ,int,int ,int ,int ) ;
 int mthca_free_mailbox (struct mthca_dev*,struct mthca_mailbox*) ;

int mthca_SET_IB(struct mthca_dev *dev, struct mthca_set_ib_param *param,
   int port)
{
 struct mthca_mailbox *mailbox;
 u32 *inbox;
 int err;
 u32 flags = 0;
 mailbox = mthca_alloc_mailbox(dev, GFP_KERNEL);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 inbox = mailbox->buf;

 memset(inbox, 0, 0x40);

 flags |= param->set_si_guid ? (1 << 18) : 0;
 flags |= param->reset_qkey_viol ? (1 << 0) : 0;
 MTHCA_PUT(inbox, flags, 0x00);

 MTHCA_PUT(inbox, param->cap_mask, 0x04);
 MTHCA_PUT(inbox, param->si_guid, 0x08);

 err = mthca_cmd(dev, mailbox->dma, port, 0, CMD_SET_IB,
   CMD_TIME_CLASS_B);

 mthca_free_mailbox(dev, mailbox);
 return err;
}
