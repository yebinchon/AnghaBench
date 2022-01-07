
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BT_ERR (char*) ;
 int BT_INFO (char*) ;
 int hci_uart_register_proto (int *) ;
 int llp ;

int ll_init(void)
{
 int err = hci_uart_register_proto(&llp);

 if (!err)
  BT_INFO("HCILL protocol initialized");
 else
  BT_ERR("HCILL protocol registration failed");

 return err;
}
