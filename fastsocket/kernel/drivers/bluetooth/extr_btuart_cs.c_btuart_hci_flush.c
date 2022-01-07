
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_dev {scalar_t__ driver_data; } ;
struct TYPE_2__ {int txq; } ;
typedef TYPE_1__ btuart_info_t ;


 int skb_queue_purge (int *) ;

__attribute__((used)) static int btuart_hci_flush(struct hci_dev *hdev)
{
 btuart_info_t *info = (btuart_info_t *)(hdev->driver_data);


 skb_queue_purge(&(info->txq));

 return 0;
}
