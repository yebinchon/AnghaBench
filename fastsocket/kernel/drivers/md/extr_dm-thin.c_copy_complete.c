
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool {int lock; } ;
struct dm_thin_new_mapping {int prepared; int err; TYPE_1__* tc; } ;
struct TYPE_2__ {struct pool* pool; } ;


 int EIO ;
 int __maybe_add_mapping (struct dm_thin_new_mapping*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void copy_complete(int read_err, unsigned long write_err, void *context)
{
 unsigned long flags;
 struct dm_thin_new_mapping *m = context;
 struct pool *pool = m->tc->pool;

 m->err = read_err || write_err ? -EIO : 0;

 spin_lock_irqsave(&pool->lock, flags);
 m->prepared = 1;
 __maybe_add_mapping(m);
 spin_unlock_irqrestore(&pool->lock, flags);
}
