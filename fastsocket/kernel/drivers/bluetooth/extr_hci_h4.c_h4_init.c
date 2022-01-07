
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BT_ERR (char*) ;
 int BT_INFO (char*) ;
 int h4p ;
 int hci_uart_register_proto (int *) ;

int h4_init(void)
{
 int err = hci_uart_register_proto(&h4p);

 if (!err)
  BT_INFO("HCI H4 protocol initialized");
 else
  BT_ERR("HCI H4 protocol registration failed");

 return err;
}
