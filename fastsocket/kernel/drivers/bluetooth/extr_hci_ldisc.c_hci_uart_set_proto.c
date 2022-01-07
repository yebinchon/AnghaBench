
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart_proto {int (* open ) (struct hci_uart*) ;int (* close ) (struct hci_uart*) ;} ;
struct hci_uart {struct hci_uart_proto* proto; } ;


 int EPROTONOSUPPORT ;
 struct hci_uart_proto* hci_uart_get_proto (int) ;
 int hci_uart_register_dev (struct hci_uart*) ;
 int stub1 (struct hci_uart*) ;
 int stub2 (struct hci_uart*) ;

__attribute__((used)) static int hci_uart_set_proto(struct hci_uart *hu, int id)
{
 struct hci_uart_proto *p;
 int err;

 p = hci_uart_get_proto(id);
 if (!p)
  return -EPROTONOSUPPORT;

 err = p->open(hu);
 if (err)
  return err;

 hu->proto = p;

 err = hci_uart_register_dev(hu);
 if (err) {
  p->close(hu);
  return err;
 }

 return 0;
}
