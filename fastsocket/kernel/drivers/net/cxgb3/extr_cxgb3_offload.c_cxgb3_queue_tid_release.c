
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t3cdev {int dummy; } ;
struct t3c_tid_entry {void* ctx; int * client; } ;
struct TYPE_2__ {struct t3c_tid_entry* tid_tab; } ;
struct t3c_data {int tid_release_lock; int tid_release_task; scalar_t__ release_list_incomplete; struct t3c_tid_entry* tid_release_list; TYPE_1__ tid_maps; } ;


 struct t3c_data* T3C_DATA (struct t3cdev*) ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void cxgb3_queue_tid_release(struct t3cdev *tdev, unsigned int tid)
{
 struct t3c_data *td = T3C_DATA(tdev);
 struct t3c_tid_entry *p = &td->tid_maps.tid_tab[tid];

 spin_lock_bh(&td->tid_release_lock);
 p->ctx = (void *)td->tid_release_list;
 p->client = ((void*)0);
 td->tid_release_list = p;
 if (!p->ctx || td->release_list_incomplete)
  schedule_work(&td->tid_release_task);
 spin_unlock_bh(&td->tid_release_lock);
}
