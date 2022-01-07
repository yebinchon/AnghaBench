
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_mailbox {int dma; int * buf; } ;
struct mthca_dev {int dummy; } ;
struct mthca_adapter {int board_id; int inta_pin; int revision_id; int device_id; int vendor_id; } ;


 int CMD_QUERY_ADAPTER ;
 int CMD_TIME_CLASS_A ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mthca_mailbox*) ;
 int MTHCA_GET (int ,int *,int ) ;
 int PTR_ERR (struct mthca_mailbox*) ;
 int QUERY_ADAPTER_DEVICE_ID_OFFSET ;
 int QUERY_ADAPTER_INTA_PIN_OFFSET ;
 int QUERY_ADAPTER_REVISION_ID_OFFSET ;
 int QUERY_ADAPTER_VENDOR_ID_OFFSET ;
 int QUERY_ADAPTER_VSD_OFFSET ;
 int get_board_id (int *,int ) ;
 struct mthca_mailbox* mthca_alloc_mailbox (struct mthca_dev*,int ) ;
 int mthca_cmd_box (struct mthca_dev*,int ,int ,int ,int ,int ,int ) ;
 int mthca_free_mailbox (struct mthca_dev*,struct mthca_mailbox*) ;
 int mthca_is_memfree (struct mthca_dev*) ;

int mthca_QUERY_ADAPTER(struct mthca_dev *dev,
   struct mthca_adapter *adapter)
{
 struct mthca_mailbox *mailbox;
 u32 *outbox;
 int err;
 mailbox = mthca_alloc_mailbox(dev, GFP_KERNEL);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 outbox = mailbox->buf;

 err = mthca_cmd_box(dev, 0, mailbox->dma, 0, 0, CMD_QUERY_ADAPTER,
       CMD_TIME_CLASS_A);

 if (err)
  goto out;

 if (!mthca_is_memfree(dev)) {
  MTHCA_GET(adapter->vendor_id, outbox,
     0x00);
  MTHCA_GET(adapter->device_id, outbox,
     0x04);
  MTHCA_GET(adapter->revision_id, outbox,
     0x08);
 }
 MTHCA_GET(adapter->inta_pin, outbox, 0x10);

 get_board_id(outbox + 0x20 / 4,
       adapter->board_id);

out:
 mthca_free_mailbox(dev, mailbox);
 return err;
}
