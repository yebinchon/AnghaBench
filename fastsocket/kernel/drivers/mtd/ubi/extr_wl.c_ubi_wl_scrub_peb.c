
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb; } ;
struct ubi_wl_entry {int pnum; TYPE_1__ u; } ;
struct ubi_device {int wl_lock; int scrub; int used; struct ubi_wl_entry* move_to; struct ubi_wl_entry* move_from; struct ubi_wl_entry** lookuptbl; } ;


 int dbg_msg (char*,int) ;
 int dbg_wl (char*,int) ;
 int ensure_wear_leveling (struct ubi_device*) ;
 scalar_t__ in_wl_tree (struct ubi_wl_entry*,int *) ;
 int paranoid_check_in_wl_tree (struct ubi_wl_entry*,int *) ;
 int prot_queue_del (struct ubi_device*,int ) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_err (char*,int) ;
 int ubi_ro_mode (struct ubi_device*) ;
 int wl_tree_add (struct ubi_wl_entry*,int *) ;
 int yield () ;

int ubi_wl_scrub_peb(struct ubi_device *ubi, int pnum)
{
 struct ubi_wl_entry *e;

 dbg_msg("schedule PEB %d for scrubbing", pnum);

retry:
 spin_lock(&ubi->wl_lock);
 e = ubi->lookuptbl[pnum];
 if (e == ubi->move_from || in_wl_tree(e, &ubi->scrub)) {
  spin_unlock(&ubi->wl_lock);
  return 0;
 }

 if (e == ubi->move_to) {






  spin_unlock(&ubi->wl_lock);
  dbg_wl("the PEB %d is not in proper tree, retry", pnum);
  yield();
  goto retry;
 }

 if (in_wl_tree(e, &ubi->used)) {
  paranoid_check_in_wl_tree(e, &ubi->used);
  rb_erase(&e->u.rb, &ubi->used);
 } else {
  int err;

  err = prot_queue_del(ubi, e->pnum);
  if (err) {
   ubi_err("PEB %d not found", pnum);
   ubi_ro_mode(ubi);
   spin_unlock(&ubi->wl_lock);
   return err;
  }
 }

 wl_tree_add(e, &ubi->scrub);
 spin_unlock(&ubi->wl_lock);





 return ensure_wear_leveling(ubi);
}
