
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hci_uart_unregister_proto (int *) ;
 int llp ;

int ll_deinit(void)
{
 return hci_uart_unregister_proto(&llp);
}
