
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart_proto {int dummy; } ;


 unsigned int HCI_UART_MAX_PROTO ;
 struct hci_uart_proto** hup ;

__attribute__((used)) static struct hci_uart_proto *hci_uart_get_proto(unsigned int id)
{
 if (id >= HCI_UART_MAX_PROTO)
  return ((void*)0);

 return hup[id];
}
