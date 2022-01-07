
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct ds_tracer {size_t size; struct ds_context* context; void* buffer; } ;
struct ds_trace {int dummy; } ;
struct ds_context {int dummy; } ;
typedef enum ds_qualifier { ____Placeholder_ds_qualifier } ds_qualifier ;
struct TYPE_2__ {size_t* sizeof_rec; } ;


 scalar_t__ DS_ALIGNMENT ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int IS_ALIGNED (unsigned long,scalar_t__) ;
 TYPE_1__ ds_cfg ;
 struct ds_context* ds_get_context (struct task_struct*,int) ;

__attribute__((used)) static int ds_request(struct ds_tracer *tracer, struct ds_trace *trace,
        enum ds_qualifier qual, struct task_struct *task,
        int cpu, void *base, size_t size, size_t th)
{
 struct ds_context *context;
 int error;
 size_t req_size;

 error = -EOPNOTSUPP;
 if (!ds_cfg.sizeof_rec[qual])
  goto out;

 error = -EINVAL;
 if (!base)
  goto out;

 req_size = ds_cfg.sizeof_rec[qual];

 if (!IS_ALIGNED((unsigned long)base, DS_ALIGNMENT))
  req_size += DS_ALIGNMENT;

 error = -EINVAL;
 if (size < req_size)
  goto out;

 if (th != (size_t)-1) {
  th *= ds_cfg.sizeof_rec[qual];

  error = -EINVAL;
  if (size <= th)
   goto out;
 }

 tracer->buffer = base;
 tracer->size = size;

 error = -ENOMEM;
 context = ds_get_context(task, cpu);
 if (!context)
  goto out;
 tracer->context = context;






 error = 0;
 out:
 return error;
}
