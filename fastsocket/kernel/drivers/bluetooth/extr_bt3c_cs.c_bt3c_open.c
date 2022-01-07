
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hci_dev {int owner; int ioctl; int destruct; int send; int flush; int close; int open; TYPE_2__* driver_data; int type; } ;
struct firmware {int size; int data; } ;
struct TYPE_6__ {struct hci_dev* hdev; TYPE_1__* p_dev; int * rx_skb; scalar_t__ rx_count; int rx_state; int txq; int lock; } ;
typedef TYPE_2__ bt3c_info_t ;
struct TYPE_5__ {int dev; } ;


 int BT_ERR (char*) ;
 int ENOMEM ;
 int HCI_PCCARD ;
 int RECV_WAIT_PACKET_TYPE ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int THIS_MODULE ;
 int bt3c_hci_close ;
 int bt3c_hci_destruct ;
 int bt3c_hci_flush ;
 int bt3c_hci_ioctl ;
 int bt3c_hci_open ;
 int bt3c_hci_send_frame ;
 int bt3c_load_firmware (TYPE_2__*,int ,int ) ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int msleep (int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int bt3c_open(bt3c_info_t *info)
{
 const struct firmware *firmware;
 struct hci_dev *hdev;
 int err;

 spin_lock_init(&(info->lock));

 skb_queue_head_init(&(info->txq));

 info->rx_state = RECV_WAIT_PACKET_TYPE;
 info->rx_count = 0;
 info->rx_skb = ((void*)0);


 hdev = hci_alloc_dev();
 if (!hdev) {
  BT_ERR("Can't allocate HCI device");
  return -ENOMEM;
 }

 info->hdev = hdev;

 hdev->type = HCI_PCCARD;
 hdev->driver_data = info;
 SET_HCIDEV_DEV(hdev, &info->p_dev->dev);

 hdev->open = bt3c_hci_open;
 hdev->close = bt3c_hci_close;
 hdev->flush = bt3c_hci_flush;
 hdev->send = bt3c_hci_send_frame;
 hdev->destruct = bt3c_hci_destruct;
 hdev->ioctl = bt3c_hci_ioctl;

 hdev->owner = THIS_MODULE;


 err = request_firmware(&firmware, "BT3CPCC.bin", &info->p_dev->dev);
 if (err < 0) {
  BT_ERR("Firmware request failed");
  goto error;
 }

 err = bt3c_load_firmware(info, firmware->data, firmware->size);

 release_firmware(firmware);

 if (err < 0) {
  BT_ERR("Firmware loading failed");
  goto error;
 }


 msleep(1000);


 err = hci_register_dev(hdev);
 if (err < 0) {
  BT_ERR("Can't register HCI device");
  goto error;
 }

 return 0;

error:
 info->hdev = ((void*)0);
 hci_free_dev(hdev);
 return err;
}
