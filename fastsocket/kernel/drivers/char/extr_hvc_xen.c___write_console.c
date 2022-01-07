
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_interface {int out_cons; int out_prod; char* out; } ;
typedef int XENCONS_RING_IDX ;


 int BUG_ON (int) ;
 size_t MASK_XENCONS_IDX (int ,char*) ;
 int mb () ;
 int notify_daemon () ;
 int wmb () ;
 struct xencons_interface* xencons_interface () ;

__attribute__((used)) static int __write_console(const char *data, int len)
{
 struct xencons_interface *intf = xencons_interface();
 XENCONS_RING_IDX cons, prod;
 int sent = 0;

 cons = intf->out_cons;
 prod = intf->out_prod;
 mb();
 BUG_ON((prod - cons) > sizeof(intf->out));

 while ((sent < len) && ((prod - cons) < sizeof(intf->out)))
  intf->out[MASK_XENCONS_IDX(prod++, intf->out)] = data[sent++];

 wmb();
 intf->out_prod = prod;

 if (sent)
  notify_daemon();
 return sent;
}
