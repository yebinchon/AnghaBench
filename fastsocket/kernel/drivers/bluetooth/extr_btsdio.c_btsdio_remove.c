
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btsdio_data {struct hci_dev* hdev; } ;


 int BT_DBG (char*,struct sdio_func*) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 struct btsdio_data* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_set_drvdata (struct sdio_func*,int *) ;

__attribute__((used)) static void btsdio_remove(struct sdio_func *func)
{
 struct btsdio_data *data = sdio_get_drvdata(func);
 struct hci_dev *hdev;

 BT_DBG("func %p", func);

 if (!data)
  return;

 hdev = data->hdev;

 sdio_set_drvdata(func, ((void*)0));

 hci_unregister_dev(hdev);

 hci_free_dev(hdev);
}
