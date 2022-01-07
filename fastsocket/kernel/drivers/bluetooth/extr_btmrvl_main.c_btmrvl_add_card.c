
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int owner; int ioctl; int destruct; int send; int flush; int close; int open; int type; struct btmrvl_private* driver_data; } ;
struct TYPE_4__ {int task; int wait_q; struct btmrvl_private* priv; } ;
struct TYPE_3__ {int tx_dnld_rdy; void* card; struct hci_dev* hcidev; } ;
struct btmrvl_private {TYPE_2__ main_thread; TYPE_1__ btmrvl_dev; int driver_lock; void* adapter; } ;


 int BT_DBG (char*) ;
 int BT_ERR (char*) ;
 int GFP_KERNEL ;
 int HCI_SDIO ;
 int THIS_MODULE ;
 int btmrvl_close ;
 int btmrvl_debugfs_init (struct hci_dev*) ;
 int btmrvl_destruct ;
 int btmrvl_flush ;
 int btmrvl_free_adapter (struct btmrvl_private*) ;
 int btmrvl_init_adapter (struct btmrvl_private*) ;
 int btmrvl_ioctl ;
 int btmrvl_open ;
 int btmrvl_send_frame ;
 int btmrvl_service_main_thread ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct btmrvl_private*) ;
 int kthread_run (int ,TYPE_2__*,char*) ;
 int kthread_stop (int ) ;
 void* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct btmrvl_private *btmrvl_add_card(void *card)
{
 struct hci_dev *hdev = ((void*)0);
 struct btmrvl_private *priv;
 int ret;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv) {
  BT_ERR("Can not allocate priv");
  goto err_priv;
 }

 priv->adapter = kzalloc(sizeof(*priv->adapter), GFP_KERNEL);
 if (!priv->adapter) {
  BT_ERR("Allocate buffer for btmrvl_adapter failed!");
  goto err_adapter;
 }

 btmrvl_init_adapter(priv);

 hdev = hci_alloc_dev();
 if (!hdev) {
  BT_ERR("Can not allocate HCI device");
  goto err_hdev;
 }

 BT_DBG("Starting kthread...");
 priv->main_thread.priv = priv;
 spin_lock_init(&priv->driver_lock);

 init_waitqueue_head(&priv->main_thread.wait_q);
 priv->main_thread.task = kthread_run(btmrvl_service_main_thread,
    &priv->main_thread, "btmrvl_main_service");

 priv->btmrvl_dev.hcidev = hdev;
 priv->btmrvl_dev.card = card;

 hdev->driver_data = priv;

 priv->btmrvl_dev.tx_dnld_rdy = 1;

 hdev->type = HCI_SDIO;
 hdev->open = btmrvl_open;
 hdev->close = btmrvl_close;
 hdev->flush = btmrvl_flush;
 hdev->send = btmrvl_send_frame;
 hdev->destruct = btmrvl_destruct;
 hdev->ioctl = btmrvl_ioctl;
 hdev->owner = THIS_MODULE;

 ret = hci_register_dev(hdev);
 if (ret < 0) {
  BT_ERR("Can not register HCI device");
  goto err_hci_register_dev;
 }





 return priv;

err_hci_register_dev:

 kthread_stop(priv->main_thread.task);

 hci_free_dev(hdev);

err_hdev:
 btmrvl_free_adapter(priv);

err_adapter:
 kfree(priv);

err_priv:
 return ((void*)0);
}
