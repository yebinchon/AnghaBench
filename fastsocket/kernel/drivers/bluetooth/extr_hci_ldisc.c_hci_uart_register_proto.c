
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart_proto {size_t id; } ;


 int EEXIST ;
 int EINVAL ;
 size_t HCI_UART_MAX_PROTO ;
 struct hci_uart_proto** hup ;

int hci_uart_register_proto(struct hci_uart_proto *p)
{
 if (p->id >= HCI_UART_MAX_PROTO)
  return -EINVAL;

 if (hup[p->id])
  return -EEXIST;

 hup[p->id] = p;

 return 0;
}
