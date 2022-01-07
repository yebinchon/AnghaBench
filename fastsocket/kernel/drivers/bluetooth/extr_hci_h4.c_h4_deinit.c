
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h4p ;
 int hci_uart_unregister_proto (int *) ;

int h4_deinit(void)
{
 return hci_uart_unregister_proto(&h4p);
}
