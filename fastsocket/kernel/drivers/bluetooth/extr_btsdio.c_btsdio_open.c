
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct hci_dev {int flags; int name; struct btsdio_data* driver_data; } ;
struct btsdio_data {TYPE_1__* func; } ;
struct TYPE_7__ {scalar_t__ class; } ;


 int BT_DBG (char*,int ) ;
 int HCI_RUNNING ;
 int REG_EN_INTRD ;
 int REG_MD_STAT ;
 scalar_t__ SDIO_CLASS_BT_B ;
 int btsdio_interrupt ;
 int clear_bit (int ,int *) ;
 int sdio_claim_host (TYPE_1__*) ;
 int sdio_claim_irq (TYPE_1__*,int ) ;
 int sdio_disable_func (TYPE_1__*) ;
 int sdio_enable_func (TYPE_1__*) ;
 int sdio_release_host (TYPE_1__*) ;
 int sdio_writeb (TYPE_1__*,int,int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int btsdio_open(struct hci_dev *hdev)
{
 struct btsdio_data *data = hdev->driver_data;
 int err;

 BT_DBG("%s", hdev->name);

 if (test_and_set_bit(HCI_RUNNING, &hdev->flags))
  return 0;

 sdio_claim_host(data->func);

 err = sdio_enable_func(data->func);
 if (err < 0) {
  clear_bit(HCI_RUNNING, &hdev->flags);
  goto release;
 }

 err = sdio_claim_irq(data->func, btsdio_interrupt);
 if (err < 0) {
  sdio_disable_func(data->func);
  clear_bit(HCI_RUNNING, &hdev->flags);
  goto release;
 }

 if (data->func->class == SDIO_CLASS_BT_B)
  sdio_writeb(data->func, 0x00, REG_MD_STAT, ((void*)0));

 sdio_writeb(data->func, 0x01, REG_EN_INTRD, ((void*)0));

release:
 sdio_release_host(data->func);

 return err;
}
