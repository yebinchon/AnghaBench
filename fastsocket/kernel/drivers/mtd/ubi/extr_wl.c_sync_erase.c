
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {unsigned long long ec; int pnum; } ;
struct ubi_ec_hdr {int ec; } ;
struct ubi_device {unsigned long long max_ec; int wl_lock; int ec_hdr_alsize; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 unsigned long long UBI_MAX_ERASECOUNTER ;
 int cpu_to_be64 (unsigned long long) ;
 int dbg_wl (char*,int ,unsigned long long) ;
 int kfree (struct ubi_ec_hdr*) ;
 struct ubi_ec_hdr* kzalloc (int ,int ) ;
 int paranoid_check_ec (struct ubi_device*,int ,unsigned long long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_err (char*,int ,unsigned long long) ;
 int ubi_io_sync_erase (struct ubi_device*,int ,int) ;
 int ubi_io_write_ec_hdr (struct ubi_device*,int ,struct ubi_ec_hdr*) ;

__attribute__((used)) static int sync_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
        int torture)
{
 int err;
 struct ubi_ec_hdr *ec_hdr;
 unsigned long long ec = e->ec;

 dbg_wl("erase PEB %d, old EC %llu", e->pnum, ec);

 err = paranoid_check_ec(ubi, e->pnum, e->ec);
 if (err > 0)
  return -EINVAL;

 ec_hdr = kzalloc(ubi->ec_hdr_alsize, GFP_NOFS);
 if (!ec_hdr)
  return -ENOMEM;

 err = ubi_io_sync_erase(ubi, e->pnum, torture);
 if (err < 0)
  goto out_free;

 ec += err;
 if (ec > UBI_MAX_ERASECOUNTER) {




  ubi_err("erase counter overflow at PEB %d, EC %llu",
   e->pnum, ec);
  err = -EINVAL;
  goto out_free;
 }

 dbg_wl("erased PEB %d, new EC %llu", e->pnum, ec);

 ec_hdr->ec = cpu_to_be64(ec);

 err = ubi_io_write_ec_hdr(ubi, e->pnum, ec_hdr);
 if (err)
  goto out_free;

 e->ec = ec;
 spin_lock(&ubi->wl_lock);
 if (e->ec > ubi->max_ec)
  ubi->max_ec = e->ec;
 spin_unlock(&ubi->wl_lock);

out_free:
 kfree(ec_hdr);
 return err;
}
