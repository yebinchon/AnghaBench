
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func_tuple {struct sdio_func_tuple* next; int size; int code; } ;
struct sdio_func {int dev; int class; struct sdio_func_tuple* tuples; } ;
struct sdio_device_id {int dummy; } ;
struct hci_dev {int owner; int destruct; int send; int flush; int close; int open; struct btsdio_data* driver_data; int type; } ;
struct btsdio_data {struct hci_dev* hdev; int txq; int work; struct sdio_func* func; } ;


 int BT_DBG (char*,struct sdio_func*,int ,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_SDIO ;
 int INIT_WORK (int *,int ) ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int THIS_MODULE ;
 int btsdio_close ;
 int btsdio_destruct ;
 int btsdio_flush ;
 int btsdio_open ;
 int btsdio_send_frame ;
 int btsdio_work ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int kfree (struct btsdio_data*) ;
 struct btsdio_data* kzalloc (int,int ) ;
 int sdio_set_drvdata (struct sdio_func*,struct btsdio_data*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int btsdio_probe(struct sdio_func *func,
    const struct sdio_device_id *id)
{
 struct btsdio_data *data;
 struct hci_dev *hdev;
 struct sdio_func_tuple *tuple = func->tuples;
 int err;

 BT_DBG("func %p id %p class 0x%04x", func, id, func->class);

 while (tuple) {
  BT_DBG("code 0x%x size %d", tuple->code, tuple->size);
  tuple = tuple->next;
 }

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->func = func;

 INIT_WORK(&data->work, btsdio_work);

 skb_queue_head_init(&data->txq);

 hdev = hci_alloc_dev();
 if (!hdev) {
  kfree(data);
  return -ENOMEM;
 }

 hdev->type = HCI_SDIO;
 hdev->driver_data = data;

 data->hdev = hdev;

 SET_HCIDEV_DEV(hdev, &func->dev);

 hdev->open = btsdio_open;
 hdev->close = btsdio_close;
 hdev->flush = btsdio_flush;
 hdev->send = btsdio_send_frame;
 hdev->destruct = btsdio_destruct;

 hdev->owner = THIS_MODULE;

 err = hci_register_dev(hdev);
 if (err < 0) {
  hci_free_dev(hdev);
  kfree(data);
  return err;
 }

 sdio_set_drvdata(func, data);

 return 0;
}
