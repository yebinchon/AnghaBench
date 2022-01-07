
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb; } ;
struct ubi_wl_entry {int pnum; TYPE_1__ u; } ;
struct ubi_device {int peb_count; int move_to_put; scalar_t__ erroneous_peb_count; int wl_lock; int used; int erroneous; int scrub; struct ubi_wl_entry* move_to; int move_mutex; struct ubi_wl_entry* move_from; struct ubi_wl_entry** lookuptbl; } ;


 int dbg_wl (char*,int) ;
 scalar_t__ in_wl_tree (struct ubi_wl_entry*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int paranoid_check_in_wl_tree (struct ubi_wl_entry*,int *) ;
 int prot_queue_del (struct ubi_device*,int ) ;
 int rb_erase (int *,int *) ;
 int schedule_erase (struct ubi_device*,struct ubi_wl_entry*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;
 int ubi_err (char*,int) ;
 int ubi_ro_mode (struct ubi_device*) ;
 int wl_tree_add (struct ubi_wl_entry*,int *) ;

int ubi_wl_put_peb(struct ubi_device *ubi, int pnum, int torture)
{
 int err;
 struct ubi_wl_entry *e;

 dbg_wl("PEB %d", pnum);
 ubi_assert(pnum >= 0);
 ubi_assert(pnum < ubi->peb_count);

retry:
 spin_lock(&ubi->wl_lock);
 e = ubi->lookuptbl[pnum];
 if (e == ubi->move_from) {





  dbg_wl("PEB %d is being moved, wait", pnum);
  spin_unlock(&ubi->wl_lock);


  mutex_lock(&ubi->move_mutex);
  mutex_unlock(&ubi->move_mutex);
  goto retry;
 } else if (e == ubi->move_to) {
  dbg_wl("PEB %d is the target of data moving", pnum);
  ubi_assert(!ubi->move_to_put);
  ubi->move_to_put = 1;
  spin_unlock(&ubi->wl_lock);
  return 0;
 } else {
  if (in_wl_tree(e, &ubi->used)) {
   paranoid_check_in_wl_tree(e, &ubi->used);
   rb_erase(&e->u.rb, &ubi->used);
  } else if (in_wl_tree(e, &ubi->scrub)) {
   paranoid_check_in_wl_tree(e, &ubi->scrub);
   rb_erase(&e->u.rb, &ubi->scrub);
  } else if (in_wl_tree(e, &ubi->erroneous)) {
   paranoid_check_in_wl_tree(e, &ubi->erroneous);
   rb_erase(&e->u.rb, &ubi->erroneous);
   ubi->erroneous_peb_count -= 1;
   ubi_assert(ubi->erroneous_peb_count >= 0);

   torture = 1;
  } else {
   err = prot_queue_del(ubi, e->pnum);
   if (err) {
    ubi_err("PEB %d not found", pnum);
    ubi_ro_mode(ubi);
    spin_unlock(&ubi->wl_lock);
    return err;
   }
  }
 }
 spin_unlock(&ubi->wl_lock);

 err = schedule_erase(ubi, e, torture);
 if (err) {
  spin_lock(&ubi->wl_lock);
  wl_tree_add(e, &ubi->used);
  spin_unlock(&ubi->wl_lock);
 }

 return err;
}
