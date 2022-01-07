
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union listen_entry {union listen_entry* next; } ;
struct tid_info {int stid_lock; int stids_in_use; union listen_entry* sfree; } ;
struct t3cdev {int dummy; } ;
struct TYPE_2__ {struct tid_info tid_maps; } ;


 TYPE_1__* T3C_DATA (struct t3cdev*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 union listen_entry* stid2entry (struct tid_info*,int) ;

void cxgb3_free_stid(struct t3cdev *tdev, int stid)
{
 struct tid_info *t = &(T3C_DATA(tdev))->tid_maps;
 union listen_entry *p = stid2entry(t, stid);

 spin_lock_bh(&t->stid_lock);
 p->next = t->sfree;
 t->sfree = p;
 t->stids_in_use--;
 spin_unlock_bh(&t->stid_lock);
}
