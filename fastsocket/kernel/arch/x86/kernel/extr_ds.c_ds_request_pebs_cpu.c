
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pebs_tracer {int dummy; } ;
typedef int pebs_ovfl_callback_t ;


 struct pebs_tracer* ds_request_pebs (int *,int,void*,size_t,int ,size_t,unsigned int) ;

struct pebs_tracer *ds_request_pebs_cpu(int cpu, void *base, size_t size,
     pebs_ovfl_callback_t ovfl,
     size_t th, unsigned int flags)
{
 return ds_request_pebs(((void*)0), cpu, base, size, ovfl, th, flags);
}
