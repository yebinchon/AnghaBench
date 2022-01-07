
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BT_ERR (char*) ;
 int BT_INFO (char*) ;
 int bcsp ;
 int hci_uart_register_proto (int *) ;

int bcsp_init(void)
{
 int err = hci_uart_register_proto(&bcsp);

 if (!err)
  BT_INFO("HCI BCSP protocol initialized");
 else
  BT_ERR("HCI BCSP protocol registration failed");

 return err;
}
