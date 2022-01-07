
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int diva_os_spin_lock_magic_t ;
typedef size_t byte ;
struct TYPE_7__ {scalar_t__ io; } ;
struct TYPE_6__ {size_t head; size_t tail; int data_spin_lock; TYPE_1__* e_tbl; } ;
struct TYPE_5__ {size_t next; } ;
typedef TYPE_2__* PISDN_ADAPTER ;
typedef TYPE_3__ ADAPTER ;


 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;

void req_queue(ADAPTER * a, byte e_no)
{
  PISDN_ADAPTER IoAdapter;
 diva_os_spin_lock_magic_t irql;
  IoAdapter = (PISDN_ADAPTER) a->io;
 diva_os_enter_spin_lock (&IoAdapter->data_spin_lock, &irql, "data_req_q");
  IoAdapter->e_tbl[e_no].next = 0;
  if(IoAdapter->head) {
    IoAdapter->e_tbl[IoAdapter->tail].next = e_no;
    IoAdapter->tail = e_no;
  }
  else {
    IoAdapter->head = e_no;
    IoAdapter->tail = e_no;
  }
 diva_os_leave_spin_lock (&IoAdapter->data_spin_lock, &irql, "data_req_q");
}
