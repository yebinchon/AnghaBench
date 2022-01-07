
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {scalar_t__ works_count; int work_sem; } ;


 int dbg_wl (char*,scalar_t__) ;
 int do_work (struct ubi_device*) ;
 int down_write (int *) ;
 int up_write (int *) ;

int ubi_wl_flush(struct ubi_device *ubi)
{
 int err;





 dbg_wl("flush (%d pending works)", ubi->works_count);
 while (ubi->works_count) {
  err = do_work(ubi);
  if (err)
   return err;
 }





 down_write(&ubi->work_sem);
 up_write(&ubi->work_sem);





 while (ubi->works_count) {
  dbg_wl("flush more (%d pending works)", ubi->works_count);
  err = do_work(ubi);
  if (err)
   return err;
 }

 return 0;
}
