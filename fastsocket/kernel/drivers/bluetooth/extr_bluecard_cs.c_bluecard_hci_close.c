
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hci_dev {int flags; scalar_t__ driver_data; } ;
struct TYPE_6__ {int hw_state; TYPE_2__* p_dev; } ;
typedef TYPE_3__ bluecard_info_t ;
struct TYPE_4__ {unsigned int BasePort1; } ;
struct TYPE_5__ {TYPE_1__ io; } ;


 int CARD_HAS_PCCARD_ID ;
 int HCI_RUNNING ;
 int bluecard_hci_flush (struct hci_dev*) ;
 int outb (int,unsigned int) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bluecard_hci_close(struct hci_dev *hdev)
{
 bluecard_info_t *info = (bluecard_info_t *)(hdev->driver_data);
 unsigned int iobase = info->p_dev->io.BasePort1;

 if (!test_and_clear_bit(HCI_RUNNING, &(hdev->flags)))
  return 0;

 bluecard_hci_flush(hdev);

 if (test_bit(CARD_HAS_PCCARD_ID, &(info->hw_state))) {

  outb(0x00, iobase + 0x30);
 }

 return 0;
}
