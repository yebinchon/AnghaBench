
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct bts_tracer {int dummy; } ;
typedef int bts_ovfl_callback_t ;


 struct bts_tracer* ds_request_bts (struct task_struct*,int ,void*,size_t,int ,size_t,unsigned int) ;

struct bts_tracer *ds_request_bts_task(struct task_struct *task,
           void *base, size_t size,
           bts_ovfl_callback_t ovfl,
           size_t th, unsigned int flags)
{
 return ds_request_bts(task, 0, base, size, ovfl, th, flags);
}
