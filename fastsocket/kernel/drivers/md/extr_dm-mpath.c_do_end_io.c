
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int errors; } ;
struct multipath {int lock; int queue_if_no_path; int nr_valid_paths; } ;
struct dm_mpath_io {scalar_t__ pgpath; } ;


 int DM_ENDIO_REQUEUE ;
 int EBADE ;
 int EILSEQ ;
 int EIO ;
 int EOPNOTSUPP ;
 int EREMOTEIO ;
 int __must_push_back (struct multipath*) ;
 int fail_path (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int do_end_io(struct multipath *m, struct request *clone,
       int error, struct dm_mpath_io *mpio)
{
 int r = DM_ENDIO_REQUEUE;
 unsigned long flags;

 if (!error && !clone->errors)
  return 0;

 if (error == -EOPNOTSUPP || error == -EREMOTEIO || error == -EILSEQ)
  return error;

 if (mpio->pgpath)
  fail_path(mpio->pgpath);

 spin_lock_irqsave(&m->lock, flags);
 if (!m->nr_valid_paths) {
  if (!m->queue_if_no_path) {
   if (!__must_push_back(m))
    r = -EIO;
  } else {
   if (error == -EBADE)
    r = error;
  }
 }
 spin_unlock_irqrestore(&m->lock, flags);

 return r;
}
