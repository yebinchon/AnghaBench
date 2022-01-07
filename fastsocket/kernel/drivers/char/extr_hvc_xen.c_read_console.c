
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xencons_interface {int in_cons; int in_prod; char* in; } ;
typedef int XENCONS_RING_IDX ;


 int BUG_ON (int) ;
 size_t MASK_XENCONS_IDX (int ,char*) ;
 int mb () ;
 int notify_daemon () ;
 struct xencons_interface* xencons_interface () ;

__attribute__((used)) static int read_console(uint32_t vtermno, char *buf, int len)
{
 struct xencons_interface *intf = xencons_interface();
 XENCONS_RING_IDX cons, prod;
 int recv = 0;

 cons = intf->in_cons;
 prod = intf->in_prod;
 mb();
 BUG_ON((prod - cons) > sizeof(intf->in));

 while (cons != prod && recv < len)
  buf[recv++] = intf->in[MASK_XENCONS_IDX(cons++, intf->in)];

 mb();
 intf->in_cons = cons;

 notify_daemon();
 return recv;
}
