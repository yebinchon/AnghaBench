
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb_node; } ;
struct ubi_device {int wl_lock; TYPE_1__ free; } ;


 int dbg_wl (char*) ;
 int do_work (struct ubi_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int produce_free_peb(struct ubi_device *ubi)
{
 int err;

 spin_lock(&ubi->wl_lock);
 while (!ubi->free.rb_node) {
  spin_unlock(&ubi->wl_lock);

  dbg_wl("do one work synchronously");
  err = do_work(ubi);
  if (err)
   return err;

  spin_lock(&ubi->wl_lock);
 }
 spin_unlock(&ubi->wl_lock);

 return 0;
}
