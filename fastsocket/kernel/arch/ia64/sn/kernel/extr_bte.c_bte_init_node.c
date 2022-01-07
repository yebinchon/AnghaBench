
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {unsigned long data; int function; } ;
struct TYPE_6__ {TYPE_1__* bte_if; TYPE_3__ bte_recovery_timer; int bte_recovery_lock; } ;
typedef TYPE_2__ nodepda_t ;
typedef int cnodeid_t ;
struct TYPE_5__ {int bte_num; scalar_t__ bh_error; scalar_t__ cleanup_active; scalar_t__ bte_error_count; int bte_cnode; int spinlock; int notify; int * most_rcnt_na; int bte_notify_addr; int bte_control_addr; int bte_destination_addr; int bte_source_addr; int * bte_base_addr; } ;


 int BTES_PER_NODE ;
 int BTE_BASE_ADDR (int) ;
 int BTE_CTRL_ADDR (int *) ;
 int BTE_DEST_ADDR (int *) ;
 int BTE_NOTIF_ADDR (int *) ;
 int BTE_SOURCE_ADDR (int *) ;
 int BTE_WORD_AVAILABLE ;
 scalar_t__ REMOTE_HUB_ADDR (int ,int ) ;
 int bte_error_handler ;
 int cnodeid_to_nasid (int ) ;
 int init_timer (TYPE_3__*) ;
 int spin_lock_init (int *) ;

void bte_init_node(nodepda_t * mynodepda, cnodeid_t cnode)
{
 int i;
 spin_lock_init(&mynodepda->bte_recovery_lock);
 init_timer(&mynodepda->bte_recovery_timer);
 mynodepda->bte_recovery_timer.function = bte_error_handler;
 mynodepda->bte_recovery_timer.data = (unsigned long)mynodepda;

 for (i = 0; i < BTES_PER_NODE; i++) {
  u64 *base_addr;


  base_addr = (u64 *)
      REMOTE_HUB_ADDR(cnodeid_to_nasid(cnode), BTE_BASE_ADDR(i));
  mynodepda->bte_if[i].bte_base_addr = base_addr;
  mynodepda->bte_if[i].bte_source_addr = BTE_SOURCE_ADDR(base_addr);
  mynodepda->bte_if[i].bte_destination_addr = BTE_DEST_ADDR(base_addr);
  mynodepda->bte_if[i].bte_control_addr = BTE_CTRL_ADDR(base_addr);
  mynodepda->bte_if[i].bte_notify_addr = BTE_NOTIF_ADDR(base_addr);





  mynodepda->bte_if[i].most_rcnt_na =
      &(mynodepda->bte_if[i].notify);
  mynodepda->bte_if[i].notify = BTE_WORD_AVAILABLE;
  spin_lock_init(&mynodepda->bte_if[i].spinlock);

  mynodepda->bte_if[i].bte_cnode = cnode;
  mynodepda->bte_if[i].bte_error_count = 0;
  mynodepda->bte_if[i].bte_num = i;
  mynodepda->bte_if[i].cleanup_active = 0;
  mynodepda->bte_if[i].bh_error = 0;
 }

}
