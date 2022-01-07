
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_work {int torture; struct ubi_wl_entry* e; } ;
struct ubi_wl_entry {int pnum; int ec; } ;
struct ubi_device {int beb_rsvd_level; int beb_rsvd_pebs; int avail_pebs; int rsvd_pebs; int bad_peb_count; int good_peb_count; int volumes_lock; int bad_allowed; int wl_lock; int free; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINTR ;
 int EIO ;
 int ENOMEM ;
 int dbg_wl (char*,int,int ) ;
 int ensure_wear_leveling (struct ubi_device*) ;
 int kfree (struct ubi_work*) ;
 int kmem_cache_free (int ,struct ubi_wl_entry*) ;
 int schedule_erase (struct ubi_device*,struct ubi_wl_entry*,int ) ;
 int serve_prot_queue (struct ubi_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sync_erase (struct ubi_device*,struct ubi_wl_entry*,int ) ;
 int ubi_calculate_reserved (struct ubi_device*) ;
 int ubi_err (char*,...) ;
 int ubi_io_mark_bad (struct ubi_device*,int) ;
 int ubi_msg (char*,int) ;
 int ubi_ro_mode (struct ubi_device*) ;
 int ubi_warn (char*) ;
 int ubi_wl_entry_slab ;
 int wl_tree_add (struct ubi_wl_entry*,int *) ;

__attribute__((used)) static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
   int cancel)
{
 struct ubi_wl_entry *e = wl_wrk->e;
 int pnum = e->pnum, err, need;

 if (cancel) {
  dbg_wl("cancel erasure of PEB %d EC %d", pnum, e->ec);
  kfree(wl_wrk);
  kmem_cache_free(ubi_wl_entry_slab, e);
  return 0;
 }

 dbg_wl("erase PEB %d EC %d", pnum, e->ec);

 err = sync_erase(ubi, e, wl_wrk->torture);
 if (!err) {

  kfree(wl_wrk);

  spin_lock(&ubi->wl_lock);
  wl_tree_add(e, &ubi->free);
  spin_unlock(&ubi->wl_lock);





  serve_prot_queue(ubi);


  err = ensure_wear_leveling(ubi);
  return err;
 }

 ubi_err("failed to erase PEB %d, error %d", pnum, err);
 kfree(wl_wrk);
 kmem_cache_free(ubi_wl_entry_slab, e);

 if (err == -EINTR || err == -ENOMEM || err == -EAGAIN ||
     err == -EBUSY) {
  int err1;


  err1 = schedule_erase(ubi, e, 0);
  if (err1) {
   err = err1;
   goto out_ro;
  }
  return err;
 } else if (err != -EIO) {





  goto out_ro;
 }



 if (!ubi->bad_allowed) {
  ubi_err("bad physical eraseblock %d detected", pnum);
  goto out_ro;
 }

 spin_lock(&ubi->volumes_lock);
 need = ubi->beb_rsvd_level - ubi->beb_rsvd_pebs + 1;
 if (need > 0) {
  need = ubi->avail_pebs >= need ? need : ubi->avail_pebs;
  ubi->avail_pebs -= need;
  ubi->rsvd_pebs += need;
  ubi->beb_rsvd_pebs += need;
  if (need > 0)
   ubi_msg("reserve more %d PEBs", need);
 }

 if (ubi->beb_rsvd_pebs == 0) {
  spin_unlock(&ubi->volumes_lock);
  ubi_err("no reserved physical eraseblocks");
  goto out_ro;
 }
 spin_unlock(&ubi->volumes_lock);

 ubi_msg("mark PEB %d as bad", pnum);
 err = ubi_io_mark_bad(ubi, pnum);
 if (err)
  goto out_ro;

 spin_lock(&ubi->volumes_lock);
 ubi->beb_rsvd_pebs -= 1;
 ubi->bad_peb_count += 1;
 ubi->good_peb_count -= 1;
 ubi_calculate_reserved(ubi);
 if (ubi->beb_rsvd_pebs)
  ubi_msg("%d PEBs left in the reserve", ubi->beb_rsvd_pebs);
 else
  ubi_warn("last PEB from the reserved pool was used");
 spin_unlock(&ubi->volumes_lock);

 return err;

out_ro:
 ubi_ro_mode(ubi);
 return err;
}
