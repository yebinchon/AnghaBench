
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct binder_proc* private_data; } ;
struct binder_proc {int dummy; } ;
typedef int fl_owner_t ;


 int BINDER_DEFERRED_FLUSH ;
 int binder_defer_work (struct binder_proc*,int ) ;

__attribute__((used)) static int binder_flush(struct file *filp, fl_owner_t id)
{
 struct binder_proc *proc = filp->private_data;

 binder_defer_work(proc, BINDER_DEFERRED_FLUSH);

 return 0;
}
