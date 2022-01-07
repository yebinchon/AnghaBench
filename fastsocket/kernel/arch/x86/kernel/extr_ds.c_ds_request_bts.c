
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_8__ {TYPE_2__* context; } ;
struct TYPE_6__ {int write; int read; int ds; } ;
struct bts_tracer {TYPE_3__ ds; TYPE_1__ trace; scalar_t__ ovfl; } ;
typedef scalar_t__ bts_ovfl_callback_t ;
struct TYPE_7__ {struct bts_tracer* bts_master; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int EPERM ;
 struct bts_tracer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int bts_read ;
 int bts_write ;
 int ds_bts ;
 int ds_init_ds_trace (int *,int ,void*,size_t,size_t,unsigned int) ;
 int ds_install_ds_area (TYPE_2__*) ;
 int ds_lock ;
 int ds_put_context (TYPE_2__*) ;
 int ds_request (TYPE_3__*,int *,int ,struct task_struct*,int,void*,size_t,size_t) ;
 int ds_resume_bts (struct bts_tracer*) ;
 int ds_write_config (TYPE_2__*,int *,int ) ;
 int get_tracer (struct task_struct*) ;
 int kfree (struct bts_tracer*) ;
 struct bts_tracer* kzalloc (int,int ) ;
 int put_tracer (struct task_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct bts_tracer *ds_request_bts(struct task_struct *task, int cpu,
      void *base, size_t size,
      bts_ovfl_callback_t ovfl, size_t th,
      unsigned int flags)
{
 struct bts_tracer *tracer;
 int error;


 error = -EOPNOTSUPP;
 if (ovfl)
  goto out;

 error = get_tracer(task);
 if (error < 0)
  goto out;

 error = -ENOMEM;
 tracer = kzalloc(sizeof(*tracer), GFP_KERNEL);
 if (!tracer)
  goto out_put_tracer;
 tracer->ovfl = ovfl;


 error = ds_request(&tracer->ds, &tracer->trace.ds,
      ds_bts, task, cpu, base, size, th);
 if (error < 0)
  goto out_tracer;


 spin_lock_irq(&ds_lock);

 error = -EPERM;
 if (tracer->ds.context->bts_master)
  goto out_unlock;
 tracer->ds.context->bts_master = tracer;

 spin_unlock_irq(&ds_lock);





 ds_init_ds_trace(&tracer->trace.ds, ds_bts, base, size, th, flags);
 ds_write_config(tracer->ds.context, &tracer->trace.ds, ds_bts);
 ds_install_ds_area(tracer->ds.context);

 tracer->trace.read = bts_read;
 tracer->trace.write = bts_write;


 ds_resume_bts(tracer);

 return tracer;

 out_unlock:
 spin_unlock_irq(&ds_lock);
 ds_put_context(tracer->ds.context);
 out_tracer:
 kfree(tracer);
 out_put_tracer:
 put_tracer(task);
 out:
 return ERR_PTR(error);
}
