
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int index; TYPE_3__* driver_data; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int * last; TYPE_1__* first; } ;
struct TYPE_7__ {scalar_t__ state; int name; scalar_t__ num_open; int pc300dev; struct tty_struct* tty; TYPE_2__ buf_rx; scalar_t__ buf_tx; } ;
typedef TYPE_3__ st_cpc_tty_area ;
struct TYPE_5__ {struct TYPE_5__* next; } ;


 int CPC_TTY_DBG (char*,int,...) ;
 int CPC_TTY_MAX_MTU ;
 int CPC_TTY_NPORTS ;
 scalar_t__ CPC_TTY_ST_IDLE ;
 scalar_t__ CPC_TTY_ST_OPEN ;
 int CTL_DTR ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_3__* cpc_tty_area ;
 int cpc_tty_signal_on (int ,int ) ;
 int kfree (unsigned char*) ;
 scalar_t__ kmalloc (int ,int ) ;

__attribute__((used)) static int cpc_tty_open(struct tty_struct *tty, struct file *flip)
{
 int port ;
 st_cpc_tty_area *cpc_tty;

 if (!tty) {
  return -ENODEV;
 }

 port = tty->index;

 if ((port < 0) || (port >= CPC_TTY_NPORTS)){
  CPC_TTY_DBG("pc300_tty: open invalid port %d\n", port);
  return -ENODEV;
 }

 cpc_tty = &cpc_tty_area[port];

 if (cpc_tty->state == CPC_TTY_ST_IDLE){
  CPC_TTY_DBG("%s: open - invalid interface, port=%d\n",
     cpc_tty->name, tty->index);
  return -ENODEV;
 }

 if (cpc_tty->num_open == 0) {
  if (!cpc_tty_area[port].buf_tx){
   cpc_tty_area[port].buf_tx = kmalloc(CPC_TTY_MAX_MTU,GFP_KERNEL);
   if (!cpc_tty_area[port].buf_tx) {
    CPC_TTY_DBG("%s: error in memory allocation\n",cpc_tty->name);
    return -ENOMEM;
   }
  }

  if (cpc_tty_area[port].buf_rx.first) {
   unsigned char * aux;
   while (cpc_tty_area[port].buf_rx.first) {
    aux = (unsigned char *)cpc_tty_area[port].buf_rx.first;
    cpc_tty_area[port].buf_rx.first = cpc_tty_area[port].buf_rx.first->next;
    kfree(aux);
   }
   cpc_tty_area[port].buf_rx.first = ((void*)0);
   cpc_tty_area[port].buf_rx.last = ((void*)0);
  }

  cpc_tty_area[port].state = CPC_TTY_ST_OPEN;
  cpc_tty_area[port].tty = tty;
  tty->driver_data = &cpc_tty_area[port];

  cpc_tty_signal_on(cpc_tty->pc300dev, CTL_DTR);
 }

 cpc_tty->num_open++;

 CPC_TTY_DBG("%s: opening TTY driver\n", cpc_tty->name);


 return 0;
}
